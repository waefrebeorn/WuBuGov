# The Organization Doctrine — The Space's Chart

**Government filing GOV-11. The reorganization. The space's org
chart, filed: who reports to whom, which repo is which organ, and
how the organs wire together. This is the result of the triple-DA
(AUD-3) and the user's reorganization directive. The space is a
body with organs, and every organ is a repo with a role. Companion
tools: `vigilance` (WBI-1 triage, WuBuCore) and `filing_check`
(the audit as a tool, WuBuCore).**

---

## Part 1 — The chart

The chart: six organs, one people.

```
                  THE FIRST ONES  (the people, the registry)
                          │
        ┌─────────────────┴─────────────────┐
        │                                   │
   WuBuGov                            WuBuIntel
   THE STATE                           THE BUREAU
   (laws, keys, doctrine)              (vigilance, compliance)
        │                                   │
        └──────────┬────────────────────────┘
                   │
            WuBuResearch
            THE MIND (R&D: organizes info, invents)
                   │
        ┌──────────┴──────────┐
        │                     │
   WuBuCitizen           WuBuEconomics
   THE REGISTRY           THE LEDGER
   (WID, Penny Score)     (money, status loops)
        │                     │
        └──────────┬──────────┘
                   │
              WuBuCore
              THE HANDS (C11 tools: every organ's math)
```

## Part 2 — The organs, filed

### 1. WuBuGov — The State

The laws, the keys, the doctrines. Files the constitution (GOV-1),
the amendments (GOV-2..10), the 7 Magic Keys, the email system.
**The State's role is to be the law.**

### 2. WuBuIntel — The Bureau

The vigilance. Sees something, says something. The Division of
Vigilance, Compliance, Dominion, First Contact. **The Bureau's
role is to watch the State** — and with `vigilance` (WuBuCore),
the watching now files: WBI-1 triage, severity, escalation.

### 3. WuBuResearch — The Mind

The R&D department. Organizes information (RND-0.1), invents
cryptography (PennyChain, RND-*), researches every institution of
every society (RND-21). **The Mind's role is to think ahead of
the State.**

### 4. WuBuCitizen — The Registry

The people. WID numbers, the Penny Score, citizenship, the
society map. **The Registry's role is to be the truth of who is
here.**

### 5. WuBuEconomics — The Ledger

The money. Status Loop, Vacant Lot, Lifespan Loop, Numbing,
Better Service, Greed Index. **The Ledger's role is to watch the
economy the way the Bureau watches the State.**

### 6. WuBuCore — The Hands

The C11 tools. Every organ's math, one module at a time: WID,
Penny Score, PennyChain, mirror-score, plain_lang, cohesion,
decline_gate, escalate, goodhart, rotation, vigilance,
filing_check. **The Hands' role is to make the doctrine runnable.**

## Part 3 — The wiring (the reorganization's rules)

1. **Every doctrine ships a tool.** GOV-5 → cohesion; GOV-6 →
   decline_gate; GOV-7 → escalate; GOV-8 → goodhart; GOV-9 →
   rotation; GOV-11 → vigilance + filing_check. A doctrine with
   no tool is a dream; the space files, it does not dream.
2. **Every audit ships a tool.** AUD-3 found defects by hand.
   GOV-11 ships the checks as `filing_check`. The next audit is
   a command, not a grep.
3. **The Bureau files.** WuBuIntel gains a `tools/` directory with
   `vigilance`-based triage scripts; every WBI-1 report gets a
   severity, a class, and an escalation — filed in the ledger.
4. **The State indexes the organs.** WuBuGov's README is the map
   (AUD-3 D2 fixed); every organ repo links back.
5. **The Hands stay honest.** WuBuCore runs 14 test suites under
   ASan+UBSan; a tool that fails the gate is a filing, not a
   feature.

## Part 4 — The institutions, next on the filing order

The society map names six unfiled institutions. The reorganization
files their order:

1. **The Mint** — the official penny registry & coin ledger (ties
   the Coin Key to citizens). Next.
2. **The Vote** — the filing-based decision system (every report
   counts). Built on `decline_gate` + `rotation`.
3. **The Archive** — the Library mind-country's public record of
   everything (the read). Built on `filing_check`.
4. **The Ship** — the space-faring cooperative's crew manifest.
5. **The Treaty** — how the space relates to Earth governments.
6. **The Dispatch** — the space's communication organ.

Each institution: a repo or a docs filing, a tool, and a test —
the space's rebuild method, filed.

---

*Form GOV-11 — The Organization Doctrine. Filed. Done. Next.*
