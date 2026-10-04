#!/usr/bin/env bash
# Tests the run: block of .github/workflows/dependabot-auto-merge.yml against a stub gh:
# group-PR body parsing (real + synthetic fixtures), single-PR title rules, merge-method
# validation and the optional wait-for-checks gate. Run: bash tests/test.sh
set -u
HERE=$(cd "$(dirname "$0")" && pwd)
FIX="$HERE/fixtures"
WF="${WF_OVERRIDE:-$HERE/../.github/workflows/dependabot-auto-merge.yml}"
WORK=$(mktemp -d)
trap 'rm -rf "$WORK"' EXIT
PASS=0; FAIL=0
ok() { PASS=$((PASS + 1)); }
ko() { FAIL=$((FAIL + 1)); printf 'FAIL: %s\n' "$1"; }

declare -A REAL=(
  [real-asg-22.md]=allow
  [real-cghl-179-actions.md]=skip
  [real-cghl-196.md]=allow
  [real-demo-24.md]=allow
  [real-ipt-30.md]=skip
  [real-ipt-35.md]=skip
  [real-ipt-40.md]=skip
  [real-komoot-33.md]=allow
  [real-landing-45.md]=allow
  [real-livestream-29.md]=allow
  [real-livestream-30.md]=allow
  [real-swingbot-5-pip.md]=skip
)
expected_for() {
  local b; b=$(basename "$1")
  if [ -n "${REAL[$b]:-}" ]; then printf '%s' "${REAL[$b]}"; return; fi
  case "$b" in allow-*) printf allow ;; skip-*) printf skip ;; *) printf unknown ;; esac
}

# awk variants: system awk (+ gawk if GAWK_DIR points at a dir containing an `awk` wrapper).
AWKDIRS=("system")
[ -n "${GAWK_DIR:-}" ] && [ -x "$GAWK_DIR/awk" ] && AWKDIRS+=("$GAWK_DIR")

# Stub gh. `api` serves $STUB_CHECKS_DIR/<n> (n = call count, falling back to the highest file).
mkdir -p "$WORK/ghbin"
cat > "$WORK/ghbin/gh" <<'STUB'
#!/usr/bin/env bash
case "$1 $2" in
  "pr list") echo 7 ;;
  "pr view")
    case "$*" in
      *"--json title"*) cat "$STUB_TITLE" ;;
      *"--json body"*) [ "${STUB_BODY_FAIL:-0}" = 1 ] && exit 1; cat "$STUB_BODY" ;;
      *) exit 2 ;;
    esac ;;
  "pr merge") printf 'merged %s\n' "$*" >> "$STUB_LOG" ;;
  api*)
    [ "${STUB_API_FAIL:-0}" = 1 ] && exit 1
    n=$(( $(cat "$STUB_CHECKS_DIR/.count" 2>/dev/null || echo 0) + 1 )); echo "$n" > "$STUB_CHECKS_DIR/.count"
    f="$STUB_CHECKS_DIR/$n"; [ -f "$f" ] || f=$(ls "$STUB_CHECKS_DIR" | grep -E '^[0-9]+$' | sort -n | tail -1 | sed "s|^|$STUB_CHECKS_DIR/|")
    [ -f "$f" ] && cat "$f"; exit 0 ;;
  *) exit 2 ;;
esac
STUB
chmod +x "$WORK/ghbin/gh"

# Extract the single run: block (indented 10 spaces) without needing yq.
awk '/^ +run: \|[ ]*$/ {f=1; next} f { if ($0 ~ /^          / || $0 == "") print substr($0, 11); else exit }' "$WF" > "$WORK/run.sh"
[ -s "$WORK/run.sh" ] || { echo "cannot extract run block from $WF"; exit 1; }

# Guard: the awk program must be byte-identical to tests/check-group.sh's.
extract_awk() { awk "/awk '\$/{f=1;next} f&&/^ *}' \"\\\$BODY_FILE\"/{print \"}\";exit} f{print}" "$1" | sed 's/^ *//'; }
if [ -n "$(extract_awk "$WORK/run.sh")" ] && diff <(extract_awk "$HERE/check-group.sh") <(extract_awk "$WORK/run.sh") > /dev/null; then ok; else ko "inlined awk differs from check-group.sh"; fi

# run_workflow title body awkdir  (extra env via exported vars) -> merged|skipped|error
run_workflow() {
  local pathpre="$WORK/ghbin"
  [ "$3" != system ] && pathpre="$3:$pathpre"
  : > "$WORK/merge.log"
  ( cd "$WORK/cwd" && env PATH="$pathpre:$PATH" REPO=o/r BRANCH=dependabot/x GH_TOKEN=x HEAD_SHA=abc123 \
      MERGE_METHOD="${MERGE_METHOD-rebase}" WAIT_FOR_CHECKS="${WAIT_FOR_CHECKS:-}" \
      WAIT_TIMEOUT_MINUTES="${WAIT_TIMEOUT_MINUTES:-15}" POLL_INTERVAL_SECONDS="${POLL_INTERVAL_SECONDS:-0}" \
      RUNNER_TEMP="$WORK" STUB_TITLE="$1" STUB_BODY="$2" STUB_LOG="$WORK/merge.log" \
      STUB_CHECKS_DIR="$WORK/checks" STUB_API_FAIL="${STUB_API_FAIL:-0}" \
      STUB_BODY_FAIL="${STUB_BODY_FAIL:-0}" bash -e "$WORK/run.sh" ) > "$WORK/wf.out" 2>&1
  local rc=$?
  if [ $rc -ne 0 ]; then printf 'error'; return; fi
  if grep -q merged "$WORK/merge.log"; then printf merged; else printf skipped; fi
}
set_checks() { rm -rf "$WORK/checks"; mkdir -p "$WORK/checks"; local i=1; for c in "$@"; do printf '%b' "$c" > "$WORK/checks/$i"; i=$((i+1)); done; }

mkdir -p "$WORK/cwd"
printf 'chore(deps): bump the all-dependencies group with 3 updates' > "$WORK/title-group"
printf 'chore(deps): bump astro from 7.3.1 to 7.4.0' > "$WORK/title-ok"

for AD in "${AWKDIRS[@]}"; do
  label=$([ "$AD" = system ] && echo system || echo gawk)
  for f in "$FIX"/real-*.md "$FIX"/synthetic/*.md; do
    exp=$(expected_for "$f"); name="$(basename "$f") [$label]"
    if [ "$AD" = system ]; then out=$(cd "$WORK/cwd" && "$HERE/check-group.sh" "$f" 2>&1); rc=$?
    else out=$(cd "$WORK/cwd" && PATH="$AD:$PATH" "$HERE/check-group.sh" "$f" 2>&1); rc=$?; fi
    got=$([ $rc -eq 0 ] && echo allow || echo skip)
    if [ "$got" = "$exp" ]; then ok; else ko "$name: expected $exp got $got :: $(printf '%s' "$out" | tail -1)"; fi
    if printf '%s\n' "$out" | grep -q '^::'; then ko "$name: output line starts with ::"; else ok; fi
    wexp=$([ "$exp" = allow ] && echo merged || echo skipped)
    wgot=$(run_workflow "$WORK/title-group" "$f" "$AD")
    if [ "$wgot" = "$wexp" ]; then ok; else ko "$name (workflow): expected $wexp got $wgot :: $(tail -2 "$WORK/wf.out")"; fi
  done

  for case in "merged|chore(deps): bump astro from 7.3.1 to 7.4.0" \
              "skipped|chore(deps): bump drizzle-kit from 0.24.2 to 0.31.4" \
              "skipped|chore(deps): bump recharts from 2.12.7 to 3.10.1" \
              "merged|chore(deps): bump resend from 6.30.0 to 6.31.0 in the all-dependencies group" \
              "skipped|chore(deps): bump brace-expansion"; do
    wexp=${case%%|*}; printf '%s' "${case#*|}" > "$WORK/title-single"
    wgot=$(run_workflow "$WORK/title-single" /dev/null "$AD")
    [ "$wgot" = "$wexp" ] && ok || ko "single title '${case#*|}' [$label]: expected $wexp got $wgot"
  done

  wgot=$(STUB_BODY_FAIL=1 run_workflow "$WORK/title-group" "$FIX/synthetic/allow-patch-only.md" "$AD")
  [ "$wgot" = skipped ] && ok || ko "body fetch failure [$label]: expected skipped got $wgot"
done

# ---- merge-method ----
for m in rebase squash merge; do
  wgot=$(MERGE_METHOD=$m run_workflow "$WORK/title-ok" /dev/null system)
  if [ "$wgot" = merged ] && grep -q -- "pr merge --$m --match-head-commit abc123 " "$WORK/merge.log"; then ok; else ko "merge-method $m: got $wgot / $(cat "$WORK/merge.log")"; fi
done
for m in "" "REBASE" "rebase --admin" "--auto" "fast-forward" '$(touch PWNED)'; do
  wgot=$(MERGE_METHOD=$m run_workflow "$WORK/title-ok" /dev/null system)
  if [ "$wgot" = error ] && [ ! -s "$WORK/merge.log" ]; then ok; else ko "invalid merge-method '$m': expected error+no merge, got $wgot"; fi
done

# ---- wait-for-checks ----
CHK_OK='A build\tcompleted\tsuccess\nB build\tcompleted\tsuccess\nunrelated\tcompleted\tfailure\n'
set_checks "$CHK_OK"   # not consulted when wait list empty
wgot=$(WAIT_FOR_CHECKS="" run_workflow "$WORK/title-ok" /dev/null system)
[ "$wgot" = merged ] && [ ! -e "$WORK/checks/.count" ] && ok || ko "empty wait-for-checks: expected merged w/o api calls, got $wgot"
wgot=$(WAIT_FOR_CHECKS=$'\n  \n' run_workflow "$WORK/title-ok" /dev/null system)
[ "$wgot" = merged ] && ok || ko "whitespace-only wait-for-checks: got $wgot"

set_checks "$CHK_OK"
wgot=$(WAIT_FOR_CHECKS=$'A build\nB build' run_workflow "$WORK/title-ok" /dev/null system)
[ "$wgot" = merged ] && ok || ko "wait success: got $wgot :: $(tail -2 "$WORK/wf.out")"

# pending twice, then success -> merged after polling
set_checks 'A build\tin_progress\tnone\n' 'A build\tqueued\tnone\nB build\tcompleted\tsuccess\n' 'A build\tcompleted\tsuccess\nB build\tcompleted\tsuccess\n'
wgot=$(WAIT_FOR_CHECKS=$'A build\nB build' WAIT_TIMEOUT_MINUTES=1 run_workflow "$WORK/title-ok" /dev/null system)
[ "$wgot" = merged ] && [ "$(cat "$WORK/checks/.count")" = 3 ] && ok || ko "pending then success: got $wgot count=$(cat "$WORK/checks/.count" 2>/dev/null)"

# pending until timeout (0 min = single look) -> skipped, step green
set_checks 'A build\tin_progress\tnone\nB build\tcompleted\tsuccess\n'
wgot=$(WAIT_FOR_CHECKS=$'A build\nB build' WAIT_TIMEOUT_MINUTES=0 run_workflow "$WORK/title-ok" /dev/null system)
[ "$wgot" = skipped ] && ok || ko "pending timeout: expected skipped got $wgot"
# required check never appears -> skipped
set_checks 'B build\tcompleted\tsuccess\n'
wgot=$(WAIT_FOR_CHECKS=$'A build\nB build' WAIT_TIMEOUT_MINUTES=0 run_workflow "$WORK/title-ok" /dev/null system)
[ "$wgot" = skipped ] && ok || ko "missing check: expected skipped got $wgot"
# real timeout with polling: 1 min is too slow; use bash SECONDS-free check via interval 1, minutes 0 -> single look only (covered above)

# failure / cancelled / neutral -> skipped
for c in failure cancelled neutral skipped timed_out; do
  set_checks "A build\\tcompleted\\t$c\\nB build\\tcompleted\\tsuccess\\n"
  wgot=$(WAIT_FOR_CHECKS=$'A build\nB build' run_workflow "$WORK/title-ok" /dev/null system)
  [ "$wgot" = skipped ] && ok || ko "conclusion $c: expected skipped got $wgot"
done
# any non-success among duplicate runs of the same name (rerun) -> skipped
set_checks 'A build\tcompleted\tfailure\nA build\tcompleted\tsuccess\n'
wgot=$(WAIT_FOR_CHECKS='A build' run_workflow "$WORK/title-ok" /dev/null system)
[ "$wgot" = skipped ] && ok || ko "duplicate runs w/ failure: expected skipped got $wgot"
# name must match exactly (prefix is not enough)
set_checks 'A build 2\tcompleted\tsuccess\n'
wgot=$(WAIT_FOR_CHECKS='A build' WAIT_TIMEOUT_MINUTES=0 run_workflow "$WORK/title-ok" /dev/null system)
[ "$wgot" = skipped ] && ok || ko "prefix name match: expected skipped got $wgot"
# api failure / bad timeout -> skipped
set_checks "$CHK_OK"
wgot=$(STUB_API_FAIL=1 WAIT_FOR_CHECKS='A build' run_workflow "$WORK/title-ok" /dev/null system)
[ "$wgot" = skipped ] && ok || ko "api failure: expected skipped got $wgot"
wgot=$(WAIT_FOR_CHECKS='A build' WAIT_TIMEOUT_MINUTES='1; touch PWNED' run_workflow "$WORK/title-ok" /dev/null system)
[ "$wgot" = skipped ] && ok || ko "bad timeout: expected skipped got $wgot"
# wait gate never bypasses the major guard
set_checks "$CHK_OK"
printf 'chore(deps): bump recharts from 2.12.7 to 3.10.1' > "$WORK/title-major"
wgot=$(WAIT_FOR_CHECKS='A build' run_workflow "$WORK/title-major" /dev/null system)
[ "$wgot" = skipped ] && ok || ko "major with passing checks: expected skipped got $wgot"

# Injection: nothing may have been executed anywhere.
if ls "$WORK/cwd" "$HERE" "$FIX" "$FIX/synthetic" "$WORK" 2>/dev/null | grep -q PWNED; then ko "injection payload executed"; else ok; fi

printf '\n%d passed, %d failed\n' "$PASS" "$FAIL"
[ "$FAIL" -eq 0 ]
