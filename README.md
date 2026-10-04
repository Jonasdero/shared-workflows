# shared-workflows

Reusable GitHub Actions workflows.

## `dependabot-auto-merge.yml`

Merges green Dependabot PRs automatically, but only when it can prove the bump is non-breaking. Intended for repos without branch protection / required checks (e.g. private repos on GitHub Free): it gates on the completed CI workflow run instead.

### Usage (caller)

```yaml
name: Dependabot auto-merge
on:
  workflow_run:
    workflows: ["CI"]
    types: [completed]
permissions:
  contents: write
  pull-requests: write
  checks: read
concurrency:
  group: dependabot-auto-merge-${{ github.event.workflow_run.head_branch }}
  cancel-in-progress: false
jobs:
  auto-merge:
    uses: Jonasdero/shared-workflows/.github/workflows/dependabot-auto-merge.yml@v1
    with:
      merge-method: rebase
```

**The caller MUST grant at least `contents: write`, `pull-requests: write` and `checks: read` (as in the snippet above). Otherwise the run fails at startup on every CI completion.**

The caller must be triggered by `workflow_run` of its CI workflow (the called workflow reads `github.event.workflow_run.*`). Adjust `workflows: ["CI"]` to your CI workflow's name.

### Inputs

| Input | Type | Default | Description |
| --- | --- | --- | --- |
| `merge-method` | string, required | - | `rebase`, `squash` or `merge`. Anything else fails the job and nothing is merged. |
| `wait-for-checks` | string | `""` | Newline-separated check-run names (exact match) that must be `completed` + `success` on the PR head commit before merging. Empty = no wait. |
| `wait-for-checks-app` | string | `""` | Optional GitHub App slug. If set, a waited check only counts when its `app.slug` equals it exactly (name and slug both must match), so another app cannot satisfy the gate with a same-named check. Empty = match by name only. |
| `wait-timeout-minutes` | number | `15` | How long to poll for `wait-for-checks`. `0` = look once. Keep it well below the job ceiling of 120 min. |

Example with Cloudflare checks:

```yaml
    with:
      merge-method: squash
      wait-for-checks: |
        Workers Builds: my-site
        Workers Builds: my-worker
      wait-timeout-minutes: 15
      wait-for-checks-app: cloudflare-workers-and-pages
```

### Rules enforced (fail-closed: when in doubt, skip and leave the PR for manual review)

- Runs only when the caller's `workflow_run` is a successful `pull_request` run actored by `dependabot[bot]`.
- Single-dependency PRs: the title must contain `from X to Y` with plain numeric versions (optional `v ^ ~ >= =` prefix and pre-release suffix; commit hashes or trailing garbage skip); a different major skips; for `0.x` (major 0 on both sides) a different minor skips (0.x minors are breaking). Unrecognized titles skip.
- Group PRs ("bump the X group"): the PR body is parsed with awk only (never evaluated). Every table row / `Updates ... from A to B` line must parse, the number of distinct packages must equal the declared "group with N updates", and every entry must keep its major (`0.x`: same minor, `0.0.x`: same patch). Truncated, nested or unknown formats skip.
- With `wait-for-checks`: any non-success conclusion, API error, missing check or timeout skips.
- Merge uses `--match-head-commit <sha of the CI run>`, so a PR that changed after CI ran is not merged.
- A skip exits 0 (step stays green); an invalid `merge-method` exits 1 (caller bug, visible).

### Versioning

`v1` is a branch, promoted manually (fast-forward only) after CI passes; a tag of the same name would take precedence. Backwards-compatible fixes and improvements are fast-forwarded onto it. Breaking changes (new required inputs, changed rules that merge less/more) ship as `v2`. Pin to a full commit SHA if you want immutability.

### Security notes

- Inputs reach the script only via `env:`, never via `${{ }}` interpolation inside `run:`. Titles and bodies are untrusted and only read via `printf '%s'` / awk.
- `GITHUB_TOKEN` (`github.token`) is the caller's token. In a called workflow the `github` context is the caller's ("the `github` context is always associated with the caller workflow"), and the called workflow can only keep or reduce the caller's token permissions ([Reusing workflow configurations](https://docs.github.com/en/actions/reference/workflows-and-actions/reusing-workflow-configurations)). The caller therefore must grant `contents: write`, `pull-requests: write`, `checks: read`.
- This repo is public so private and org repos can call it. Org-owned callers need Actions settings that allow it: "Allow all actions and reusable workflows", or an allowlist entry for `Jonasdero/shared-workflows@*`.
- Consider pinning callers to a SHA instead of `@v1` in high-trust repos.

### Development

`bash tests/test.sh` extracts the `run:` block and runs it against a stub `gh` (real and synthetic Dependabot bodies, title rules, merge-method validation, wait-for-checks). CI also runs actionlint (pinned, sha256-verified). Set `POLL_INTERVAL_SECONDS` to speed up polling in tests (default 30).
