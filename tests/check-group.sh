#!/usr/bin/env bash
# Fail-closed safety check for Dependabot GROUP PR bodies.
# Usage: check-group.sh [BODY_FILE]   (reads stdin when no file is given)
# Exit 0 = allow auto-merge, exit 1 = skip (manual review). Prints the reason.
#
# Allow only when ALL hold:
#   - at least one "Bumps the <g> group with <N> update(s) ..." header (top level),
#   - every top-level table row / "Updates `x` from A to B" line parses,
#   - number of distinct package names == sum of declared N,
#   - every entry: same major; 0.x: same minor; 0.0.x: same patch.
# Lines inside <details> blocks (release notes, changelogs, commits) are ignored.
# The body is untrusted data: it is only read by awk, never evaluated by the shell.
set -u
BODY_FILE=${1:-/dev/stdin}
LC_ALL=C awk '
function trim(s) { gsub(/^[ \t]+/, "", s); gsub(/[ \t]+$/, "", s); return s }
function clean(s) { gsub(/[^ -~]/, "?", s); return substr(s, 1, 120) }
# Sets VMAJ/VMIN/VPAT; returns 0 when the version is not plain numeric semver-ish.
function parsever(v,    n, a) {
  v = trim(v); gsub(/`/, "", v); v = trim(v)
  sub(/^[v=~>^ ]+/, "", v)
  if (v !~ /^[0-9]+(\.[0-9]+)*([-+][0-9A-Za-z.+-]+)?$/) return 0
  sub(/[-+].*$/, "", v)
  n = split(v, a, ".")
  if (n > 4 || length(a[1]) > 9) return 0
  VMAJ = a[1] + 0; VMIN = (n >= 2) ? a[2] + 0 : 0; VPAT = (n >= 3) ? a[3] + 0 : 0
  return 1
}
function entry(name, f, t,    fM, fm, fp) {
  gsub(/`/, "", f); f = trim(f); gsub(/`/, "", t); t = trim(t)
  name = trim(name)
  if (substr(name, 1, 1) == "[") { name = substr(name, 2); sub(/\]\(.*$/, "", name) }
  gsub(/`/, "", name); name = trim(name)
  if (name == "") { bad++; print "  - unparseable entry (empty package name)"; return }
  entries++
  if (!(name in seen)) { seen[name] = 1; uniq++ }
  if (!parsever(f)) { bad++; printf "  - %s: unparseable from-version \"%s\"\n", clean(name), clean(f); return }
  fM = VMAJ; fm = VMIN; fp = VPAT
  if (!parsever(t)) { bad++; printf "  - %s: unparseable to-version \"%s\"\n", clean(name), clean(t); return }
  if (fM != VMAJ) { brk++; printf "  - %s: major bump %s -> %s\n", clean(name), clean(f), clean(t) }
  else if (VMAJ == 0 && fm != VMIN) { brk++; printf "  - %s: 0.x minor bump %s -> %s (breaking)\n", clean(name), clean(f), clean(t) }
  else if (VMAJ == 0 && VMIN == 0 && fp != VPAT) { brk++; printf "  - %s: 0.0.x bump %s -> %s (breaking)\n", clean(name), clean(f), clean(t) }
}
BEGIN { depth = 0; headers = 0; decl = 0; entries = 0; uniq = 0; bad = 0; brk = 0 }
{
  line = $0; sub(/\r$/, "", line)
  if (depth == 0) {
    if (line ~ /^Bumps the .* group with [0-9]+ updates?([ :.,]|$)/) {
      n = line; sub(/^.* group with /, "", n); sub(/[^0-9].*$/, "", n)
      if (length(n) > 6) { bad++; print "  - absurd update count" } else { decl += n + 0; headers++ }
    } else if (line ~ /^Bumps /) {
      bad++; print "  - unrecognized Bumps line"
    } else if (line ~ /^\|/) {
      if (line ~ /^\|[ ]*Package[ ]*\|[ ]*From[ ]*\|[ ]*To[ ]*\|[ ]*$/ || line ~ /^\|[ :-]+\|[ :-]+\|[ :-]+\|[ ]*$/) next
      nc = split(line, c, "|")
      if (nc != 5 || trim(c[5]) != "") { bad++; print "  - unparseable table row"; next }
      entry(c[2], c[3], c[4])
    } else if (line ~ /^Updates `[^`]+` from [^ ]+ to [^ ]+[ ]*$/) {
      rest = substr(line, 10); i = index(rest, "`"); name = substr(rest, 1, i - 1)
      rest = substr(rest, i + 7); j = index(rest, " to ")
      entry(name, substr(rest, 1, j - 1), substr(rest, j + 4))
    } else if (line ~ /^Updates `/) {
      bad++; print "  - unparseable Updates line (no plain from/to versions)"
    }
  }
  t = line; o = gsub(/<details/, "", t); cl = gsub(/<\/details>/, "", t)
  # Dependabot never nests <details>; unbalanced/nested tags (e.g. from upstream release notes)
  # could desync depth and hide real rows -> treat as unparseable (fail closed).
  if (depth + o > 1 || depth - cl < 0) { if (!desync) { bad++; desync = 1; print "  - unbalanced or nested <details> (cannot trust structure)" } }
  depth += o - cl; if (depth < 0) depth = 0
}
END {
  if (headers == 0) { print "SKIP: no \"Bumps the ... group with N updates\" header found"; exit 1 }
  if (decl < 1) { print "SKIP: declared update count is zero"; exit 1 }
  if (entries == 0) { print "SKIP: no dependency rows parsed"; exit 1 }
  if (bad > 0) { printf "SKIP: %d unparseable line(s)\n", bad; exit 1 }
  if (uniq != decl) { printf "SKIP: parsed %d distinct packages but header declares %d (truncated or unknown format)\n", uniq, decl; exit 1 }
  if (brk > 0) { printf "SKIP: %d breaking bump(s) (major, 0.x minor or 0.0.x)\n", brk; exit 1 }
  printf "ALLOW: %d packages (%d entries), all non-breaking\n", uniq, entries
  exit 0
}' "$BODY_FILE"
