# The Vote — Filing-Based Decision System

**Government filing GOV-17. Every citizen is an eye. Every report
counts. The ledger is the vote.**

---

## Part 1 — The spine

Earth's institution: **the vote** — each citizen's voice, aggregated
into a decision, one person one vote.

The space's spine: **the vote** — every citizen is an eye (the
Bureau's see-something-say-something doctrine, WuBuIntel). Every
report filed is a vote. Every filing counts. The decision is not
made by majority — it is made by **filing**. The argument that
survives scrutiny wins. So does the one with the weight of
evidence. The most complete filing wins.

## Part 2 — How the vote happens

A proposal is filed as a WBI-1 report. The proposal lives at a
permanent address. Citizens respond three ways:

1. **File a supporting report** — adds weight to the proposal.
2. **File a dissenting report** — adds weight against.
3. **File a WBI-1 triage** — challenges a report on evidence
   grounds, not opinion.

Each filing increases the proposal's **weight**. The decision is
made when the weight stabilizes — no new filings for 72 hours.

## Part 3 — The weight formula

```
Weight = verifications - challenges - evasions
```

- **Verifications**: reports that pass scrutiny (verified by the
  Vigilance tool)
- **Challenges**: reports that fail scrutiny or are disputed with evidence
- **Evasions**: reports that contradict known facts (WID evasion,
  penny evasion — the highest class in WuBuIntel)

A proposal passes when Weight > 0 and no evasion is present. One
evasion kills the proposal, whatever the weight.

## Part 4 — The result

The result is filed in `archive/votes/` as a permanent record:
`vote-<proposal-id>.md` with the final weight, the dissenting
filings, and the resolution. The result is chained into PennyChain.

## Part 5 — No representatives

There are no representatives. No one votes *for* you. You vote by
filing. If you do not file, you do not vote. Silence is consent to
the default.

*Form GOV-17 — The Vote. Filed. Done. Next.*
