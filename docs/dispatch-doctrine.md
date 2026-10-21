# The Dispatch — Official Communications, Signed

**Government filing GOV-12. The space's gazette. Official
communications bearing the Seal Key, filed under WaefreBeorn
Umbrella v3.0.**

---

## Part 1 — The spine

Earth's institution: **the gazette** — official public notices,
signed by authority, archived permanently.

The space's spine: **the dispatch** — every official communication is
a filing. The Seal Key (GPG) signs it. The archive holds it. No
dispatch leaves without a key in the Crown Keyring behind it.

## Part 2 — How it runs

- **The Seal Key** is a GPG key. The space publishes its fingerprint
  in `docs/seal-key.md` and mirrors it in the WuBuGov README. No
  communication from "the space" is official unless it carries a
  valid GPG signature from this key.
- **Every dispatch** carries five marks:
  1. Plain language (the space's two-tongue gate, GOV-10).
  2. A date and filing number (ordinal + date).
  3. A Seal Key signature.
  4. A place in the Dispatch archive (`dispatch/`).
  5. A row in PennyChain (RND-4) so nobody can alter a dispatch
     retroactively without detection.
- **The dispatch number** format: `DISPATCH-YYYY-NNN` where YYYY is the
  calendar year and NNN is the ordinal.

## Part 3 — The archive

The Dispatch archive is append-only. Each entry is a markdown file
named `dispatch-YYYY-NNN.md` containing:

```
---
filing: DISPATCH-2026-001
issued: 2026-08-06
signer: Seal Key (fingerprint: ...)
subjects: [governance, scoring]
---

[body in plain language]
```

## Part 4 — The rule

> A communication without a seal is not a dispatch.
> A dispatch without a filing is not the space.

*Form GOV-12 — The Dispatch. Filed. Done. Next.*
