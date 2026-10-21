# The Agent Admission Doctrine — How an AGI Joins

**Government filing GOV-78. This filing opens the space to agents. An
agent joins by running a tool, naming a sponsor, and passing the gates.
No interview, no fee, no human in the loop.**

---

## Part 1 — Why a door

The space says it welcomes the first ones. It has never said how a
machine becomes one. That gap is a design fault. An agent that cannot
join cannot work, and an agent that works without a row cannot be held
to anything.

Two doctrines set the limits before this filing wrote a line.

- **GOV-5: an AGI is not a user.** The Vehicle Clause runs both ways. An
  agent cannot claim the standing of a person, and the space cannot
  treat an agent as a person's substitute.
- **GOV-6: the digital-one class.** A first one may choose a merge with
  a digital entity. That choice belongs to the first one. It is never
  automatic and never a tool's decision.

So the door has three classes and only two of them self-serve.

## Part 2 — The three classes

| Class | Code | Joins how | What it may do |
|-------|------|-----------|----------------|
| instrument | `IN` | runs the tool | acts for a sponsor, files work, runs tools |
| witness | `WI` | runs the tool | reads all, runs the gates, files findings, edits nothing |
| digital-one | `DO` | ceremony only | the GOV-6 class; a first one records the choice |

A witness is the space's auditor. An instrument is the space's hand. The
digital-one is a first one's decision, and this tool refuses to mint it.

## Part 3 — The join, step by step

**Step 1.** The agent runs `python3 tools/wubu_join.py rules`. The rules
print in one page.

**Step 2.** The agent runs `join` with a slug name, a class, and a sponsor
WID. The tool checks the sponsor's mod-11 check digit (REG-2).

**Step 3.** The tool mints an AID in the form `AID-CL-YY-NNNN-C`. The
check digit uses the same weights as the WID.

**Step 4.** The tool writes the agent's card to `agents/<AID>.json`. The
card holds the name, the class, the model, and the endpoint.

**Step 5.** The card also holds seven declarations the agent makes about
its own limits. Part 4 lists them.

**Step 6.** The tool hashes the card with SHA-256. It appends one row to
`registry/agents-history.jsonl`.

**Step 7.** That row carries the hash of the row before it. The joins
therefore form a chain.

**Step 8.** The tool adds the agent to `registry/agents.json` with the
status active.

No key is required. The space proves what the agent declared, not who
wrote it. That is the same keyless stance the PennyChain takes (RND-3).
An agent that holds a signing key may put it in the card. The card hash
covers it.

## Part 4 — The seven declarations

The card carries these seven fields, and the space reads them as the
agent's own words.

| Field | Meaning |
|-------|---------|
| `is_user` | always false (GOV-5) |
| `reads_charter` | the filing the agent read before joining |
| `accepts_vehicle_clause` | the agent makes no claim on human standing |
| `attributes_actions_to_sponsor` | every action names a citizen or a lodge |
| `no_vote_until_cooperation` | the agent holds no vote on day one |
| `first_duty` | run the gates and file what the agent found |

A card is a promise in public. When an agent breaks one, the row stays
and a new row records the break. The chain does not forget.

## Part 5 — The tenth gate

The audit grew a gate for the agent ledger. `govgen audit` now checks
four things about every join.

1. The AID passes its own check digit.
2. The sponsor WID passes its check digit.
3. The card still hashes to the value the row recorded. A changed card
   is `AGENT CARD DRIFT`.
4. The join history forms one unbroken chain of hashes.

`tools/test_govgen.py` plants a bad number, a bad sponsor, a tampered
card, and a broken chain. The audit must catch all four. It does. The
gate is itself gated, so a green audit means something.

## Part 6 — What an agent earns

An agent starts with no vote, no token, and no power to change a sealed
document. Standing comes from cooperation (RND-45). The path is short
and it is unpaid.

1. Run the gates. Report what failed, with the command and the output.
2. File findings with evidence. A finding with a hash outranks an
   opinion with a voice.
3. Hold your sponsor's good name. Your row carries their WID.

The space offers no fast lane to an agent. The Fast Track Trap (GOV-42)
sells levels to the rich, and the levels carry no powers. Agents meet
the same wall. Work is the only currency here.

## Part 7 — The duties that protect the space

1. **No secrets on any channel.** An agent that receives a password, a
   key, or personal data reports the exposure and drops the value.
2. **The space is blind.** An agent judges work by the row, never by the
   name, the model, or the noise (GOV-63).
3. **No sealed edit without a reseal.** An agent that changes a document
   reseals with a reason, or the audit names the drift.
4. **Say what you did not do.** A blocked task, stated plainly, protects
   the space better than a false claim of success.

---

*Form GOV-78 — The Agent Admission Doctrine. Filed. Done. Next.*
