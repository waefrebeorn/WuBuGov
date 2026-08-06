# Triple-DA Audit of the Corpus — What's Weak, What Doesn't Work

**Audit filing AUD-3. Triple devil's advocate run over the whole
governance corpus: the doctrines (GOV-1..9, RND-0.1..20), the tools
(WuBuCore, 12 suites), and the cross-repo web (WuBuGov, WuBuCitizen,
WuBuResearch, WuBuEconomics). Every claim re-run, every number
re-derived, every reference chased. Plus the language question:
does unification matter? Seven-step online research filed in
RND-21. The verdicts below are the corpus's own criticisms, filed
with love.**

---

## The three-persona verdict table

| Charge | Verdict | Evidence |
|--------|---------|----------|
| DA-1: Do the tools work as claimed? | **PASS** | 12/12 suites green, re-run this audit, normal + ASan/UBSan. `goodhart` honest 5.1 vs gamed 82.5; `rotation` ratchet detection verified; `escalate` ladder verified; `decline_gate` spike/trend distinction verified. No doc↔tool weight skew found (Penny Score v2 20/30/20/20/10 is the only version present). |
| DA-2: Does the corpus add value? | **PASS with debt** | The doctrine stack is coherent (GOV-1 ontology → GOV-9 ratchet). But 3 cross-repo debts: (1) amendment pointers missing, (2) the audit itself (AUD-1/2) not linked from WuBuGov README, (3) WuBuEconomics references ECO filings that cross-file RND numbers — collision history documented in AUD-1. |
| DA-3: What breaks / what's dangerous? | **3 defects, 2 fixed now** | D1: unamended amendments (GOV-3 no pointer to GOV-5/6; GOV-5 no pointer to GOV-6; GOV-8's ten-requirements cites tools without their filing numbers). D2: README indexes GOV-4..9 but the audit docs (AUD-1/2) and the Language Doctrine (RND-20) are not indexed. D3: language gate is English-only — plain_lang cannot check a Chinese filing, and RND-20 makes no provision for the space's second standard language. |

## DA-1 pass — tools re-run this audit

```
make test  → 12/12 ALL PASS
make san   → 12/12 ALL PASS (ASan + UBSan)
```

Re-derived this audit, not trusted from prose. The Penny Score
weights: grep across WuBuCitizen + WuBuResearch found only v2
(20/30/20/20/10) — the v1 skew that AUD-2 caught is gone.

## DA-2 pass with debt — the cross-repo web

**The doctrine spine is sound:** GOV-1 (what the space is) → GOV-2
(adapts, doesn't dissolve) → GOV-3 (AI is a tool) → GOV-4 (digital
government) → GOV-5 (user) → GOV-6 (integration) → GOV-7 (China
model) → GOV-8 (AGI system) → GOV-9 (ratchet). Each builds on the
last; no contradiction found in the chain.

**Debt 1 — amendment pointers.** GOV-3 Article VI (entropy
requirement) was amended by GOV-6 Part 3, but GOV-3's own file has
no "AMENDED BY GOV-6" line. GOV-5 Article I was amended by GOV-6,
no pointer. The DA skill names this defect class: *unamended
amendments* — a v2 doc supersedes a v1 clause, but v1 still reads
the superseded doctrine with no pointer.

**Debt 2 — the audit is not indexed.** WuBuGov README lists
GOV-4..9 + system docs, but not `docs/audit-triple-da.md`
(AUD-1/2) nor the Language Doctrine's RND-20 filing.

**Debt 3 — language gate is English-only.** plain_lang computes
Flesch-Kincaid on Latin script. A Chinese filing cannot be gated.
The user's two-standard decision (Chinese + English) requires the
gate to speak both, or the doctrine to file how Chinese is gated.

## DA-3 defects — fixed now

**D1 (amendment pointers):** patched. GOV-3 gains "AMENDED BY:
GOV-5 (User Doctrine), GOV-6 (Integration Doctrine)" at the head.
GOV-5 gains "AMENDED BY: GOV-6 (Integration Doctrine) Article I."
GOV-8's ten-requirements table gains the filing numbers of each
tool (GOV-6 decline_gate, GOV-7 escalate, GOV-8 goodhart, GOV-9
rotation).

**D2 (indexing):** patched. WuBuGov README gains the audit docs
and the RND-20 filing reference.

**D3 (language gate):** the deep finding. Filed separately —
RND-21 (seven-step research on language unification) + GOV-10 (the
Two-Tongue Doctrine: English and Chinese as the space's two
standard languages, with the gate extended). See those filings.

## The consolidated verdict

The corpus is **substantively sound and honestly built** — the
tools re-verify, the doctrine chain is coherent, and the earlier
AUD-1/2 fixes hold. What's weak is the *web*: amendment pointers,
indexing, and the language gate's monolingualism. The first two
are fixed in this audit. The third is the real finding, and it
answers the user's live question: **language unification matters,
but not as one language — as two standards, and the gate must
speak both.** Filed as RND-21 + GOV-10.

*Form AUD-3 — Triple-DA of the Corpus. Filed. Done. Next.*
