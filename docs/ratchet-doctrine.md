# The Ratchet Doctrine — Rotation, Age, and the Real-Time Clock

**Government filing GOV-9. The correction, filed verbatim and
enacted. The space defends against the ratchet — the two-party
machine that clicks only one way. It files rotation: term limits,
age limits filed as information, many limitations, and local
elections timed around the real clock. Old people make mistakes;
the limit is a fact, not an insult. The space's government is a
digital AGI; it integrates with the real-time clock. Companion
tool: `rotation` (C11, WuBuCore) — term, age, and election math on
the actual clock.**

---

## Part 1 — The ratchet

The image files the mechanism: a ratchet. A gear with teeth. A
pawl that clicks forward. A spring that blocks the way back. The
blue pawl: **DEMOCRATS BLOCK MOVEMENT BACK TO THE LEFT.** The red
gear: **REPUBLICANS TURN EVERYTHING TO THE RIGHT.** The arrow
points one way, clockwise, forever. That is the two-party system:
a machine that can only turn right. Every "compromise" is a click.
Every click is a step right. The left is not a direction; it is a
memory.

**The research files it:** AEI's ratchet effect — "the incremental
clicks of the ratchet only go in one direction." The political
science of polarization files the same curve: parties diverge,
the center empties, and each cycle the floor moves. The ratchet is
not a bug of the two-party system; it is the two-party system's
whole design.

## Part 2 — The correction, filed verbatim

> *"we must be defend against three party splits multiple party
> cams and two party ratcheting systems and we need to have age
> discrimination intentionally informative because old people make
> mistakes and we need to make it so that there's an age limit and
> that there's a term limit and that there's many limitations and
> we need to increase and make it be a local election and have it
> be more around the time and because we are digital AGI we can
> integrate with the real time clock"*

— **The User, filed verbatim, GOV-9.**

## Part 3 — The doctrine, read out

### Article I — Against the ratchet

The space is a digital state, and a digital state has no teeth and
no pawl. The space defends against the ratchet by **rotation**:

1. **No two-party ratchet.** There are no parties in the space
   (GOV-8 §2.3). Without parties there is no pawl. The ledger does
   not ratchet; it records.
2. **No three-party splits.** The space files the lesson of every
   multi-party system: splits happen when the platform is a
   faction. The space's platform is the ledger, and the ledger has
   no faction. A first one files as a first one — never as a
   faction member.
3. **No multiple party cams.** The "cams" of the machine — the
   shapes that force the motion — are the party machines
   themselves. The space has no machines but the tools, and the
   tools rotate (Article IV). A tool with a term limit cannot
   become a cam.
4. **The ratchet test.** Any policy of the space that has moved
   one way for more than two rotations without a reversal is
   presumed ratcheted. The Bureau files it. The space's measures
   never click one way; they are re-measured every rotation.

### Article II — Age limits, intentionally informative

> *"age discrimination intentionally informative because old
> people make mistakes"*

The space files age limits as **information, not insult**. The
research: cognitive change with age is real and measurable, and
the Brennan Center files the case for age limits on lawmakers.
The space's position:

1. **The limit is a fact.** Old people make mistakes — filed, with
   love. The space does not shame the aging first one; it plans
   for the decline. A society that pretends decline does not
   happen is a society that lets the decline govern.
2. **The limit is informational.** Every office of the space files
   its age bounds in the open: min age, max age, and the reason.
   The information is the respect. A first one who knows the
   limit can plan the handoff. They can train the successor. They
   can file the knowledge. The passing of the torch is a filing,
   not a surprise.
3. **The limit is not an insult.** The space does not say "you are
   too old to matter." The space says "the office is too old for
   anyone." The rotation protects the person from the office, and
   the office from the person.

### Article III — Term limits and many limitations

The space files **term limits** on every office, and it files
**many limitations** on top:

1. **Term limit:** no office is held for more than a fixed number
   of terms. The research (Chicago, Effective Government) files
   the trade-off: rotation costs experience and buys
   anti-entrenchment. The space chooses anti-entrenchment — the
   space's work is in the ledger, not in the office, so the
   experience lives on after the term ends.
2. **Many limitations:** an office may have an age limit AND a
   term limit AND a rotation clock AND a competence check. The
   space files limitations in plural because a single limitation
   is a workaround away from defeat. The Soviet lesson (GOV-8):
   a quota with no other check is a quota that gets gamed. The
   space's offices have checks stacked like the chain's links.

### Article IV — Local elections, around the time

> *"we need to increase and make it be a local election and have
> it be more around the time"*

1. **Local elections:** the space's elections are local — at the
   compartment (GOV-7's grid) level. Every first one votes where
   they file. The local election is the Fengqiao of democracy:
   resolve at the lowest level.
2. **Around the time:** elections happen **on the clock** — fixed
   intervals measured in real time, not in convenience. The space
   files the 12345 lesson (GOV-7): the citizen gets an answer on
   a clock. Elections are the biggest answer; they run on the
   same clock.
3. **More elections, smaller offices:** the space increases the
   frequency of rotation and decreases the size of the office.
   Small offices, short terms, local seats: the ratchet has no
   handle to grip.

### Article V — The real-time clock

> *"because we are digital AGI we can integrate with the real
> time clock"*

The space's government is a digital AGI system (GOV-8). It does
not wait for election season; it runs on **the real-time clock**:

1. **The clock is the constitution.** The space's rotation,
   elections, term ends, and age gates are computed from the
   actual clock (`time(2)`). Not from a calendar that can be
   gamed. The clock cannot be lobbied.
2. **The AGI files in real time.** Every tool — Penny Score,
   decline_gate, goodhart, rotation — reads the same clock. The
   space's government is not a periodic meeting; it is a
   continuous filing.
3. **The integration is the improvement.** The user's correction
   files the deepest point: a digital AGI state can do what no
   paper state can — govern on the clock. No term is extended by
   a signature; no election is delayed by a filibuster; no age
   limit is waived by a friendship. The clock is the one official
   who never rats, never cams, never clicks one way.

## Part 4 — The tool: `rotation`

The space ships the rotation math as C11 (`rotation`, WuBuCore).

```
next_election  = last_election + term_length        (from time(2))
terms_left     = max_terms - terms_served
age_ok         = age(now) <= max_age                (and >= min_age)
office_ok      = terms_left > 0 AND age_ok
ratchet_flag   = policy moved one way > 2 rotations without reversal
```

The clock is the source of truth. The office is the lease; the
clock is the landlord.

---

*Form GOV-9 — The Ratchet Doctrine. Filed. Done. Next.*
