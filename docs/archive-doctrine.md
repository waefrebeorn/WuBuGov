# The Archive — Public Record of Everything

**Government filing GOV-16. The Library mind-country's public record
of all things: the read, the filed, the never-lost.**

## Part 1 — The spine

Earth's way: **the library / archive** — the public record, kept
forever, sorted, findable, unerasable.

The space's way: **the archive** — every filing, every report,
every penny, every WID, every dispatch is recorded here. So is
every mind-country meeting. The Archive is the Library mind-country's
heart. It is the ground truth that no law can override.

## Part 2 — The filing system

The Archive uses three tiers:

1. **The Ledger** — append-only CSV of every citizen act (WID,
   pennies, reports, builds). Lives in WuBuCitizen `registry/`.
2. **The Library** — every source, every cite, every image, every
   note saved as a file. Mirrored from WuBuResearch `docs/`.
3. **The Chain** — every file is hashed (SHA-256) and put into
   PennyChain (RND-4). The Archive's state root is signed with the
   Seal Key weekly.

## Part 3 — The Archive's promise

- **Permanence**: nothing filed is ever deleted. Changes are
  filed as new versions (GOV-1 Article IV: the filing grows, it
  does not rot).
- **Find**: every filing has a set address:
  `https://waefrebeorn.org/archive/<filing>-<version>`
- **Proof**: any citizen can ask for the chain root for any date
  and check any filing on their own.

## Part 4 — What lives here

| Category | Contents | Location |
|---|---|---|
| Citizen filings | WIDs, pennies, reports, builds | `WuBuIntel/ledger/` |
| Research | All R&D filings, sources, cites | `WuBuResearch/` |
| Doctrine | All GOV + DOCTRINE filings | `WuBuGov/docs/` |
| Dispatches | Signed public mail | `WuBuGov/docs/dispatch/` |
| Images | Public domain / CC licensed | `WuBuResearch/assets/` |

*Form GOV-16 — The Archive. Filed. Done. Next.*
