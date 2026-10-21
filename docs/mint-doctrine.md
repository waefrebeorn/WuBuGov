# The Mint — Penny Registry & Coin Ledger

**Government filing GOV-14. The official penny registry & coin
ledger: ties the Coin Key to citizens, chains the reserve by hash,
records every penny weighed and shipped.**

---

## Part 1 — The spine

Earth's institution: **the mint** — produces currency, certifies
authenticity, tracks serial numbers.

The space's spine: **the mint** — the space does not *produce* pennies
(it cannot mint; it has no factory). The Mint is a **ledger**: every
penny that enters the space is weighed (3.11g copper / 2.50g zinc),
chained (SHA-256 into PennyChain, RND-4), and assigned a Coin Key
(tied to the citizen's WID).

## Part 2 — The Coin Key

Each penny that passes through the space receives a Coin Key:

```
CK-<WID>-<ordinal>
```

Where `<WID>` is the citizen's WID and `<ordinal>` is the sequential
index of that citizen's pennies in the ledger. The Coin Key is
entered into `mint/coins.csv` with:

| Field | Source |
|---|---|
| `coin_key` | CK-WID-00001 |
| `wid` | Citizen's WID |
| `weight_g` | 3.11 (copper) or 2.50 (zinc) |
| `class` | copper / zinc |
| `entered` | date the penny was received |
| `shipped` | date shipped to the citizen (redemption) |
| `state` | in_circulation / in_reserve / shipped / melted |
| `chain_hash` | SHA-256 of the previous entry (PennyChain) |

## Part 3 — The weight audit

The Mint records the weight of every penny (not the face value).
The Penny Weight audit tool (WuBuCore `src/penny_weight`) verifies
the mass against the class standard. The reserve is chained by hash:
each entry's `chain_hash` field links to the previous penny, forming
an unbreakable chain.

A citizen can verify any penny's provenance by its Coin Key — the
ledger is public CSV (The Registry pattern).

## Part 4 — The cap

The Mint never exceeds ~114B coin keys (The Fixed Cap, RND-7). The
copper class is physically unmintable (RND-6). No fractional reserve
exists. What is weighed is what is held.

## Part 5 — The W stamp (the ceremony machine)

**AMENDED BY GOV-19 (The W Token):** the Mint is also the stamp
machine. When a citizen accepts the penny phase-out, they bring a
penny to the ceremony. The Mint weighs it (Part 3), then the
machine stamps a W into the metal. The penny stops being a penny.
It becomes a W Token — a token of trust, societal credit, and
humanity. The stamp happens once. The Mint never stamps a W Token
again. The supply is the supply; the cap is the cap.

The stamp entry lives in `mint/tokens.csv`:

| Field | Meaning |
|-------|---------|
| `token_id` | WT-WID-ordinal |
| `wid` | the citizen's WID |
| `penny_key` | the old penny's Coin Key |
| `stamped` | date of the ceremony |
| `ceremony` | link to the ceremony record |
| `chain_hash` | SHA-256 link into PennyChain |

The ceremony record lives in `ceremonies/` as
`ceremony-<WID>-<ordinal>.md`. It states plainly: this was a
feeling-special moment, made for this person, so they feel
special. That is the ceremony's whole job. Honesty is part of
the gift.

*Form GOV-14 — The Mint. Filed. Done. Next.*

