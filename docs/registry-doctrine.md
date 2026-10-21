# The Registry Doctrine — The Government as Data

**Government filing GOV-18. The reorganization: the space is a
registry, not a pile of prose. Every filing is a row. Every tool
is a row. Every index is generated from the rows. The government
audits itself by running its own tools over its own data.**

## Part 1 — The problem it solves

The space filed 54 filings in its first day. The numbers grew
(GOV-1..17, RND-0.1..23, ECO-1..8, REG-1..4, WBI-1, AUD-1..3).
Hand-maintained indexes drifted: 14/14 suites became 17/17, RND-8
was two things at once, RND-20 meant two different filings,
READMEs claimed tools that did not exist. Prose lies. Data does not.

## Part 2 — The registry (single source of truth)

`registry/filings.json` — every filing: id, repo, file, title,
status, tools, cross-references, amendments.
`registry/tools.json` — every tool: python oracle, C11 module, CLI,
test file, the filing it serves.
`registry/divisions.json` — the six organs and their divisions.

The registry IS the law's index. A filing that is not in the
registry does not exist. A number that is not in the registry is
a phantom. A tool that is not in the registry was never shipped.

## Part 3 — The generator (indexes are computed, never written)

`tools/govgen.py`:

- `govgen audit` — cross-check the registry against the corpus.
  Phantom refs, missing files, missing tools, collisions, stale
  retired numbers. Exit 1 on any defect. `--json` for machines.
- `govgen index` — regenerate every repo's INDEX.md and the master
  INDEX.md from the registry.
- `govgen map` — regenerate the society map institution table.
- `govgen stats` — counts per division, tool coverage.
- `govgen lang` — run the space's own language gates (plain_lang
  FRES + STE, zh_lang) over every filing; write CORPUS-LANG.md.

Rule: **never hand-edit a generated file.** Edit the registry,
regenerate. The generated files say so at the top.

## Part 4 — The audit (the Hands check the whole space)

`make audit` in WuBuCore runs:

1. `govgen.py audit` — the registry gate.
2. `filing_check` — the numbering gate (collisions, dangling,
   amendment pointers) over the live corpus.
3. `plain_lang` — the language gate over the generated indexes.

`make check` runs audit + build + tests + ASan/UBSan. One command,
the whole government, verified by execution.

## Part 5 — The numbers, computed

| Division | Count | Meaning |
|----------|-------|---------|
| GOV | 17 | the State's doctrines |
| RND | 21 | the Mind's research |
| ECO | 8 | the Ledger's economics |
| REG | 4 | the Registry's citizenship |
| WBI | 1 | the Bureau's reports |
| AUD | 3 | the audits |
| **Total** | **54** | filings |
| **Tools** | **24** | C11 modules, 24 CLIs, 22 test files, 14 Python oracles |

These numbers are not written by hand. They are printed by
`govgen.py stats`. When they change, the registry changed.

## Part 6 — Retired numbers

The registry carries a `retired` list: numbers that once meant
something and now mean nothing (RND-8, RND-9, RND-14). The audit
flags their use outside the historical audit docs. A retired
number is a lie waiting to be told; the registry retires it in
public, with the reason.

## Part 7 — Why this is the AGI government

A government that runs on prose needs clerks to keep the prose
straight. A government that runs on data needs only the data and
the tools. The tools do not get tired, do not drift, and do not
argue. The registry is the clerk that never sleeps. The audit is
the Bureau that never blinks. The language gate is the editor
that never skips a page.

The space's founding rule — every doctrine ships a tool — is now
literal. The doctrine of the registry ships govgen.py. And govgen
audits the doctrine's own corpus.

*Form GOV-18 — The Registry Doctrine. Filed. Done. Next.*
