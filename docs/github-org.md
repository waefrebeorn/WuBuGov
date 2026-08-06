# WuBuGov — GitHub Organization Standards

**The GitHub side of the space. Professional, consistent, everywhere.**

Modeled on how real governments run their public GitHub (e.g. the Swiss
Federal Chancellery, `github.com/swiss`), adapted for the ~ WuBu ~ space.

## Organization

- **User:** `waefrebeorn` (78 repos)
- **Org (future):** `WuBuGov` — created from the GitHub web UI
  (Settings → Organizations → New) in one click; the API cannot create
  orgs, but the web UI can. Invite the `waefrebeorn` user as owner.
- **Index repo:** `WuBuGov` — this repo, the map of the space.

## Repo standards (every repo in the space)

Every repo MUST have, at minimum:

1. **LICENSE** — the WaefreBeorn Umbrella License v3.0 (canonical text) —
   done across all 22 repos.
2. **README.md** — what it is, how to build, how to use, how to contact,
   how to send a penny.
3. **.gitignore** — language-appropriate.
4. **Description** — one line, professional, with the ~ WuBu ~ mark.
5. **Topics** — e.g. `wubu`, `c11`, `ai`, `video-editor`.

## Recommended repo metadata

| Field | Standard |
|-------|----------|
| Description | `~ WuBu ~ <one-liner>` |
| Homepage | `https://waefrebeorn.org` |
| Topics | `wubu`, plus domain tags |
| Default branch | `main` (rename `master` where present) |
| Issues | enabled |
| Discussions | enabled for flagship repos |
| Wiki | enabled where docs are long |

## Branch strategy

- `main` — always green, always buildable.
- Feature branches for anything non-trivial.
- No force-pushes to `main`. Ever. (wubu-soul law)

## Commit standard

- Signed commits where the Seal Key is available (`git config commit.gpgsign true`).
- Conventional messages: `feat:`, `fix:`, `docs:`, `license:`, `refactor:`.
- One logical change per commit.

## The .github directory (org-wide defaults)

In the WuBuGov repo (and later the org):

```
.github/
├── profile/
│   └── README.md        → org landing page (visible on the org home)
├── ISSUE_TEMPLATE/
│   ├── bug_report.yml
│   ├── feature_request.yml
│   └── penny_clause.yml  → "I read the license. Here is a penny. [ ]"
├── PULL_REQUEST_TEMPLATE.md
└── workflows/
    └── license-check.yml → CI that fails if LICENSE is stale
```

## GitHub Pages

- `waefrebeorn.github.io` — the website repo (already exists).
- Custom domain: `waefrebeorn.org` (see cloudflare-setup.md).
- HTTPS enforced by Cloudflare + Pages.

## The license-check CI idea

A tiny GitHub Action that verifies the repo's LICENSE matches the canonical
text from `waefrebeorn-umbrella-license` (hash compare). If it drifts, CI
fails and the fix is one copy-paste. This keeps the whole space correct
automatically — exactly the "anything that points to it is always correct"
property.

```yaml
# .github/workflows/license-check.yml
name: license-check
on: [push, pull_request]
jobs:
  check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Fetch canonical license
        run: |
          curl -fsSL https://raw.githubusercontent.com/waefrebeorn/waefrebeorn-umbrella-license/main/LICENSE -o /tmp/canonical-LICENSE
      - name: Compare
        run: |
          if ! diff -q LICENSE /tmp/canonical-LICENSE; then
            echo "::error::LICENSE is stale. Copy from waefrebeorn-umbrella-license."
            exit 1
          fi
```

## Contact in every repo

Every README ends with:

> **Contact:** postmaster@waefrebeorn.org
> **Pennies:** see the Penny Clause (§14 of LICENSE)
