# The China Model Doctrine — What the Space Files from the World's Most Systematic State

**Government filing GOV-7. Comparative government research on the
People's Republic of China's governing system, filed and enacted as
improvements to the space. Research by WuBuResearch: the grid, the
petition, the swift act, the veto target, the prevention-first
watch, the local resolution, the mobilization. Companion tool:
`escalate` (C11, WuBuCore) — the Fengqiao ladder, in math.**

---

## Part 1 — The research, filed

The space studies every society that ever existed. China is the
world's most systematic state: the largest population, the oldest
continuous bureaucracy, and the most complete governing machinery.
The research files seven institutions. Each is measured. Each is
filed as an improvement to the space — with the space's own
non-negotiables added (windows, watchers, no black sites).

### 1.1 The Grid (网格化管理, wǎnggé huà guǎnlǐ)

**The research:** Chinese cities are divided into grids — cells of
about 1,000 residents. Each grid has one grid worker. The grid
worker knows the cell: who lives there, what they need, what is
wrong. The grid is the "basic supervision and management unit" of
urban governance (Mittelstaedt, 2022). Data is standardized, the
community collaborates, the service reaches the person.

**What the space files:** the **Compartment Grid**. The space is
already compartmentalized (GOV-6). The grid adds the *worker*: each
compartment of first ones has a named watcher-with-love. The worker
knows the cell. The Bureau is the grid of grids.

### 1.2 The Petition (信访, xìnfǎng — letters and visits)

**The research:** since 1949, any citizen may petition any level of
government by letter, phone, or visit. Petitioning bureaus exist at
every level. Citizens may bypass the local level and go higher.
Xinfang is the *primary* dispute-resolution system of China — courts
handle more petitions through their internal offices than lawsuits
(Minzner). The petition is the pressure valve of the state.

**What the space files:** the **Letter-and-Visit File**. The space's
Complaint File is upgraded to a true xinfang: any first one may
file at any level, including against the Bureau. The Bureau watches
the Bureau — and the petition is how the first ones watch the
Bureau. No filing is ever "wrong office." Every filing is routed.

### 1.3 The Swift Act (12345, 接诉即办 — receive-complain-act-immediately)

**The research:** Beijing's 12345 citizen hotline: a complaint is
received, a case is opened, and action happens *immediately*. The
reform is called 接诉即办 (jiē sù jí bàn) — "receive the complaint,
act at once." The hotline has handled over 100,000 calls without a
single error (CGTN). The accountability cost is real (temporal
governance, Wiley 2024) — but the citizen gets an answer.

**What the space files:** the **12345 Clause**. Every filing of the
space gets an immediate act: received, routed, and answered on a
clock. The answer may be "the Bureau is looking" — but it is an
answer, on time, filed. A filing that receives no act within the
clock is itself a filing (a WBI-1 against the silence).

### 1.4 The Social Credit System (社会信用体系)

**The research:** not one score — 43 fragmented local systems
(Asianetwork Exchange). More reward than punishment; Rongcheng
rates 90% of citizens grade A. The national model ("Meritown"):
start 1,000 points, eight levels AAA to D, 389 rules (124 reward,
265 punish), online appeals (Stanford FSI, Liu & Rona-Tas 2024).
**The documented flaw:** unlike acts are treated as equal — 300
hours of volunteering (+50) can cancel out abusing a family member
(−50). And officials get more perks but *extra* surveillance: the
state disciplines both society and itself.

**What the space files:**
1. **No cross-domain cancellation.** The Penny Score never lets
   one domain of life cancel another. Volunteering is a Penny
   domain; harm is a WBI domain; they do not add. The space files
   the flaw as a warning: *a score that adds unlike acts is a
   mirror that lies* (GOV-3).
2. **Online appeal, always.** Every score change is appealable on
   the file, like Meritown — with one addition: the appeal is
   public, and the answer is filed.
3. **Power gets extra scrutiny.** The space adopts the Chinese
   principle whole: officials are watched harder than citizens.
   The Bureau watches the Bureau most.

### 1.5 The Cadre Evaluation System (干部考核)

**The research:** China's officials are evaluated on targets:
hard targets (binding, measurable) and soft targets (guidance).
GDP was a *veto* target: miss it and nothing else mattered. That
drove a tournament among localities — and gaming. Post-2013
reforms removed GDP primacy, added social and ecological
indicators, and added post-implementation inspections. The result
is imperfect: officials now game "spotlight projects" —
performative successes for visibility (Asia Society Policy
Institute).

**What the space files:** the **Veto Target Doctrine**.
1. The space's officials (Bureau members, division heads) are
   evaluated on **filing honesty**, not growth. The veto target is
   **vigilance**: a Bureau member who misses a filing fails all
   other scores.
2. **No spotlight projects.** The space files the Chinese lesson:
   *what gets measured gets gamed*. The space's measure is the
   ledger itself. A performative success is a mirror; a filed
   truth is the work.
3. **Post-filing inspection.** Every filing may be inspected after
   the fact — the Bureau's own reports are the Bureau's own cases.

### 1.6 The National Supervision Commission (2018)

**The research:** in 2018 China merged three bodies. The Ministry
of Supervision. The corruption-prevention bureau. The
procuratorate's anti-corruption arm. One National Supervision
Commission was born. The shift: from *punishing* corruption to
*preventing* it (Cambridge CQ, Li 2019). One body, co-located with
the party's discipline commission, watches every official.

**What the space files:** the **Prevention-First Watch**. The
Bureau's vigilance is prevention-first: watch before the harm,
file before the loss. Punishment is the backstop, never the
business. The space's anti-corruption arm is the Bureau itself —
one body, watching every filing, including its own.

### 1.7 The Fengqiao Experience (1963) and the Whole-Nation System

**The research:** the Fengqiao model (1963, Mao's instruction)
resolves "contradictions among the people" *at the lowest level*.
It uses mediation, education, and local knowledge. Do not pass
problems upward. The new-era Fengqiao adds institutionalized
mediation (Cambridge, police mediation, renqing — the human bond).
The whole-nation system (举国体制): the state mobilizes all
resources for a major task — nuclear, space, pandemic, chips.

**What the space files:**
1. **Resolve lowest.** A dispute is resolved in its compartment
   first. Only what the compartment cannot hold escalates. The
   escalation is a math — the `escalate` tool (Part 2).
2. **Mobilize openly.** When the space commits to a task, it
   mobilizes the whole space — every division, every ledger, every
   first one. The space's mobilization is always published, never
   secret. A black-site mobilization is a contradiction the space
   does not hold.

## Part 2 — The tool: `escalate`

The space ships the escalation rule as C11 (`escalate`, WuBuCore):

```
resolve_low   = filing is within the compartment's capacity
               AND does not name an official
               AND is not a statistical spike
escalate_one  = filing exceeds capacity, or is a spike
               (the compartment's decline_gate fires)
escalate_all  = filing names a Bureau member or an official
               (the watchers must watch the watcher)
```

The ladder: **resolve lowest → escalate one → escalate all.**
A filing that names an official always escalates to the Bureau —
the space's non-negotiable, added to the Chinese model. The
Fengqiao rule is "don't pass problems upward"; the space's rule
is "resolve where you can, escalate where you must, and the
must is math."

## Part 3 — The improvements, enacted

1. **WuBuCitizen** — the registry gains grid fields: each first
   one has a compartment and a named worker.
2. **WuBuIntel** — the Bureau gains the grid-of-grids watch, the
   Letter-and-Visit File (any level, including against the
   Bureau), and the Prevention-First Watch.
3. **WuBuGov** — the 12345 Clause: every filing gets an immediate
   act on a clock; silence is itself a filing.
4. **Penny Score** — no cross-domain cancellation; online appeal
   on the file; power gets extra scrutiny.
5. **WuBuCore** — `escalate` shipped, tested, verified.

---

*Form GOV-7 — The China Model Doctrine. Filed. Done. Next.*
