# The Timeline Doctrine — THE HISTORY

**Government filing GOV-22. THE HISTORY is the aggregate
overlap history of humanity, worldwide, on one timeline. The
chain stops anyone from rewriting it.**

The space remembers by computation, not by prose.

## Part 1 — What THE HISTORY is

THE HISTORY (`WuBuTimeLine.md`) is the human timeline of history
worldwide, seen as one overlap. Every civilization, empire,
religion, and age sits on the same axis, so the overlaps show.
It comes from `tools/wubu_history.py`, which reads
`registry/history/history.json`.

The overlap is the point:

- Egypt lived from 3100 BCE to 30 BCE. Sumer died, Greece rose
  and fell, Rome rose — all inside Egypt's lifetime. Sumer rose
  first, in 4500 BCE; Egypt was already old when Sumer fell.
- Rome and Han China stood at the ends of the Earth at the
  same time. They traded silk for gold. They met once,
  ambiguously, in 166 CE.
- The Maya lasted ~3700 years — from 2000 BCE to 1697 CE,
  from the Bronze Age to the Enlightenment, unbroken.
- The Mongols, Mali, and the Khmer built their worlds in the
  same century.

No generation before ours could hold all of THE HISTORY at
once. The space files it with the overlaps visible, so the next
civilization starts with the map instead of the dark.

## Part 2 — Why it must be tamper-evident

Whoever holds the pen rewrites history. The space files
against that. THE HISTORY goes into a chain.

`tools/wubu_timeline.py` hashes every file in the space — the
history data, the doctrines, the tools — into snapshots. Each
snapshot chains to the previous:

```
root_N = SHA256(prev_root | every file's hash)
```

The root is the overlap: every file's hash lives inside it.

- **Stop modification.** Edit any file — the history JSON, an
  old doctrine, a tool — and every later root breaks. The latest
  root is the published truth; a mismatch means someone changed
  something.
- **Discover old modifications.** `diff` any two snapshots and
  see exactly which files changed between them. `find <file>`
  shows every change to one file, with hashes and times. The
  chain keeps every state, so old modifications come to light,
  not to rest.
- **Append-only.** A snapshot never edits a past snapshot. It
  only adds the next link. Nobody rewrites the history; they
  can only extend it.

## Part 3 — The published root

Every snapshot prints a root. Publish it. Anyone can verify the
whole space against it:

```
python3 tools/wubu_timeline.py verify   # current state vs latest
python3 tools/wubu_timeline.py check    # the whole chain, true?
python3 tools/wubu_timeline.py history  # every link + root
```

A root that does not recompute is a lie caught in public. THE
HISTORY cannot be quietly edited; the chain turns every edit
into a visible event.

## Part 4 — The rule

**THE HISTORY regenerates and reverifies with the daily audit.**
`wubu_history.py` renders the overlap; `wubu_timeline.py`
snapshots and verifies the chain. The record comes from the
clocks and the hashes, and neither lies.

*Form GOV-22 — The Timeline Doctrine. Filed. Done. Next.*
