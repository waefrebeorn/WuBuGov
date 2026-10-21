# The Integrity Doctrine — the Seal and the Gates

**Government filing GOV-77. The space files everything. A government that
loses its own filings is not a government; it is a rumor. This filing makes
the archive prove itself: a seal over every document, and gates that fail
loudly when the registry and the corpus disagree.**

---

## Part 1 — What the audit found

A depth audit of the space ran on 2026-10-21. It found the government
incomplete in four ways, and every one of them was invisible to the old
audit.

1. **The registry had lost 41 filings.** RESEARCH filings RND-1 through
   RND-45 were cited 553 times across the corpus and were absent from the
   registry. The audit reported them as phantoms. The filings were real;
   the registry was wrong.
2. **Nineteen filings carried the wrong number.** The LEDGER division's
   numbers had rotated: the document registered as ECO-1 was filed as
   ECO-3, the one registered as ECO-3 was filed as ECO-5, and so on. The
   audit could not see it, because it never compared a document's own
   declared number to its registry entry.
3. **The repos did not hold the corpus.** 110 files were uncommitted —
   51 of 80 STATE documents, and five whole C11 modules with their test
   suites. The registry named tools that the public repository did not
   contain.
4. **A shadow copy of seven STATE documents sat outside every repo**,
   registered a second time as DOC-1 through DOC-7. An editor could
   correct the copy and leave the real filing wrong.

The lesson is one line: **a register of what should exist is not evidence
of what does exist.**

## Part 2 — The seal

The seal is one JSON record over the whole corpus. For every registered
document it stores a SHA-256 hash of the document's own bytes, plus the
hashes of the three registry files. One root hash covers the sorted
entries. Each new seal also records the root of the seal before it, so the
seals form a chain.

```
python3 tools/govgen.py seal          # seal the corpus
python3 tools/govgen.py verify-seal   # recompute and compare
```

The seal has no keys and no signatures. It needs none: this government
does not prove who wrote a document, only that the document has not
changed since the space last agreed on it. The pattern is PennyChain
(RND-3) applied to prose.

A changed document is not an error. It is a **reseal event**. The space
reseals on purpose, and the reason is recorded in the chain.

## Part 3 — The gates

`govgen audit` now enforces eight gates. Each gate exists because it
failed once in the real corpus.

| Gate | Question it asks |
|------|------------------|
| Missing file | Does the registered document exist? |
| Stale declaration | Does the document agree with its own number? |
| Orphan filing | Does a document claim a number the registry lacks? |
| Duplicate file | Do two filings claim one document? |
| Unrecorded filing | Does a log-recorded filing appear in its record? |
| Phantom reference | Does every cited number resolve? |
| Stale retired reference | Is a retired number used outside its record? |
| Seal drift | Has a sealed document changed without a reseal? |

A gate that never fails is decoration. `tools/test_govgen.py` builds a
throwaway corpus, plants each defect, and requires the audit to catch it.
Fifteen cases, fifteen passes, and the run fails if any gate goes quiet.
The gate is itself gated.

Two audit bugs died in this pass. The reference scanner swallowed the
period after a number, so `see GOV-77.` was invisible — end-of-sentence
citations were never checked. And retired numbers resolved everywhere,
which made the stale-retired-ref gate dead code.

## Part 4 — The Chain Keeper

The work of keeping the seal honest is real work, so it earns standing.

A citizen who runs the audit, reseals after an intentional change, and
files the reason earns the title **Chain Keeper**. The Bureau does not
audit the Chain Keeper's honesty; the chain does. A missed reseal is
visible to everyone, and so is a good one. No one inspects a Keeper's
face, voice, or name — the ledger holds the root, the root holds the
record, and the record holds everyone equally (GOV-63).

The reward is not a level to buy. It is the only reward the space has
ever offered: the thing you did is still there, and it still says what you
meant.

## Part 5 — The rule

1. The registry is the single source of truth (GOV-18). All indexes are
   generated from it, never hand-edited.
2. Every registered document is sealed. Edit, then reseal, then audit.
3. A number belongs to the document that declares it. The registry follows
   the document; the document does not follow the registry.
4. A filing with no standalone document must name the record that holds
   it, and the record must mention it.
5. The repos hold the corpus. A filing that exists only on one machine is
   a filing the space cannot read.
6. The gates run before any push. Green means green because red was
   proven possible.

---

*Form GOV-77 — The Integrity Doctrine. Filed. Done. Next.*
