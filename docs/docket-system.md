# The Docket System — Official Documents and Tracking

**Government filing GOV-55. Every official document needs a
docket number. Every docket number needs a record. The Docket
System is the official tracking system of the ~ WuBu ~
government. Research verified: real governments use docket systems
(Court CM/ECF, Regulations.gov, USITC EDIS). The space adopts
these standards.**

---

## Part 1 — The Docket Number

Every official document receives a unique docket number.

### 1.1 — Format

```
WBU-YYYY-NNNN-T
```

| Element | Meaning | Example |
|---------|---------|---------|
| **WBU** | WuBu Government | WBU |
| **YYYY** | Year | 2026 |
| **NNNN** | Sequential number | 0001 |
| **T** | Document type code | P, E, R, C, L, W, D, X, M |

### 1.2 — Type Codes

| Code | Type | Description | Retention |
|------|------|-------------|-----------|
| **P** | Proclamation | Founder or Congress declaration | Permanent |
| **E** | Edict | Formal order | Permanent |
| **R** | Report | Official report | 10 years |
| **C** | Certificate | Citizenship, lodge charter | Permanent |
| **L** | Lodge Charter | Lodge founding document | Permanent |
| **W** | W Token Record | Token minting record | Permanent |
| **D** | Docket Filing | Standard filing | 7 years |
| **X** | Urgent Edict | Emergency order | Permanent |
| **M** | Mission Assignment | Assigned mission | 3 years |
| **A** | Amendment | License or doctrine amendment | Permanent |
| **N** | Notice | Public notice | 1 year |
| **S** | Seal Record | Seal usage log | Permanent |

### 1.3 — Sequential Numbering

The sequential number is **global across all types**. The first
document filed in 2026 is WBU-2026-0001. The second is
WBU-2026-0002. The type code does not reset the sequence.

### 1.4 — Cross-References

Documents may reference other documents:

```
WBU-2026-0005-E (Edict on Penny Clause)
  → References: WBU-2026-0001-P (Founding Proclamation)
  → Amends: WBU-2026-0003-P (Original Penny Clause Proclamation)
  → Implements: GOV-47 (Enforcement Doctrine)
```

---

## Part 2 — The Docket Book

### 2.1 — The Physical Docket Book

The **Docket Book** is the official physical record:
- **Format:** Bound ledger, 500 pages.
- **Pages:** Each page records one docket entry.
- **Columns:** Docket number, Date, Type, Title, Filing officer,
  Status.
- **Location:** The W Vault.

### 2.2 — Entry Format

```
┌──────────────────────────────────────────────────────────────┐
│ DOCKET NO: WBU-2026-0001-P                                   │
│ DATE: 2026-09-14                                             │
│ TYPE: Proclamation                                           │
│ TITLE: The Founding of the ~ WuBu ~ Government               │
│ FILING OFFICER: WaefreBeorn, Founder                        │
│ STATUS: ACTIVE                                               │
│ CROSS-REFS: None                                             │
│ HASH: sha256:a1b2c3d4e5f6...                                 │
└──────────────────────────────────────────────────────────────┘
```

### 2.3 — The Digital Docket Book

The **Digital Docket Book** is the public chain:
- **Format:** JSON entries on the public ledger.
- **Searchable:** By docket number, date, type, title.
- **Immutable:** Once filed, entries cannot be deleted.
- **Mirror:** The physical and digital dockets are mirrors of
  each other.

---

## Part 3 — Filing Procedures

### 3.1 — Who May File

| Filer | What They May File |
|-------|-------------------|
| **Founder** | All types |
| **World Congress** | P, E, R, A |
| **Bureau Chief** | R, D, N |
| **Mint Director** | W, C (token certificates) |
| **Citizens** | D, M (mission proposals) |
| **Lodge Leaders** | L (lodge charters), D |

### 3.2 — Filing Process

1. **Prepare:** The filer prepares the document.
2. **Sign:** The filer signs the document (physically or
   digitally).
3. **Submit:** The document is submitted to the Docket Office.
4. **Review:** The Docket Master reviews for completeness.
5. **Docket:** The Docket Master assigns a docket number.
6. **Record:** The entry is recorded in the Docket Book and
   on the chain.
7. **File:** The original is stored in the W Vault.
8. **Publish:** The document is published on the public ledger.

### 3.3 — Filing Fees

| Document Type | Fee |
|---------------|-----|
| Proclamation | Free (founder/Congress only) |
| Edict | Free (founder/Congress only) |
| Report | Free |
| Certificate | Free (W Token covers cost) |
| Lodge Charter | 100 plastic tokens |
| Standard Filing | 10 plastic tokens |
| Urgent Filing | 50 plastic tokens |

---

## Part 4 — Document Templates

### 4.1 — Proclamation Template

```
╔═══════════════════════════════════════════════════════════════╗
║                        [GREAT SEAL]                           ║
║                           🐛                                  ║
║                                                               ║
║                    ~ WuBu ~ GOVERNMENT                         ║
║                                                               ║
║                  PROCLAMATION WBU-YYYY-NNNN-P                  ║
║                                                               ║
║  ─────────────────────────────────────────────────────────   ║
║                                                               ║
║  TITLE:                                                       ║
║                                                               ║
║  DATE:                                                        ║
║                                                               ║
║  BY THE AUTHORITY OF: [Founder / World Congress]              ║
║                                                               ║
║  ─────────────────────────────────────────────────────────   ║
║                                                               ║
║  WHEREAS, [reason for proclamation]                           ║
║                                                               ║
║  NOW, THEREFORE, I DO PROCLAIM:                               ║
║                                                               ║
║  1.                                                           ║
║  2.                                                           ║
║  3.                                                           ║
║                                                               ║
║  THIS PROCLAMATION IS EFFECTIVE IMMEDIATELY.                  ║
║                                                               ║
║  Signed,                                                      ║
║  _________________________                                    ║
║                                                               ║
║  DOCKET: WBU-YYYY-NNNN-P | HASH: sha256:...                  ║
║                                                               ║
╚═══════════════════════════════════════════════════════════════╝
```

### 4.2 — Edict Template

```
╔═══════════════════════════════════════════════════════════════╗
║                        [GREAT SEAL]                           ║
║                           🐛                                  ║
║                                                               ║
║                    ~ WuBu ~ GOVERNMENT                         ║
║                                                               ║
║                     EDICT WBU-YYYY-NNNN-E                     ║
║                                                               ║
║  ─────────────────────────────────────────────────────────   ║
║                                                               ║
║  TITLE:                                                       ║
║                                                               ║
║  DATE:                                                        ║
║                                                               ║
║  ISSUED BY: [Founder / World Congress / Bureau Chief]         ║
║                                                               ║
║  ─────────────────────────────────────────────────────────   ║
║                                                               ║
║  WHEREAS, [reason]                                            ║
║                                                               ║
║  NOW, THEREFORE, BE IT ORDAINED:                              ║
║                                                               ║
║  Section 1. [Provision]                                       ║
║  Section 2. [Provision]                                       ║
║  Section 3. [Provision]                                       ║
║                                                               ║
║  PENALTY FOR VIOLATION: [Penalty]                             ║
║                                                               ║
║  EFFECTIVE: [Date]                                            ║
║                                                               ║
║  Signed,                                                      ║
║  _________________________                                    ║
║  Witnessed,                                                   ║
║  _________________________                                    ║
║                                                               ║
║  DOCKET: WBU-YYYY-NNNN-E | HASH: sha256:...                  ║
║                                                               ║
╚═══════════════════════════════════════════════════════════════╝
```

### 4.3 — Certificate Template

```
╔═══════════════════════════════════════════════════════════════╗
║                        [GREAT SEAL]                           ║
║                      [EMBOSSED GOLD]                          ║
║                           🐛                                  ║
║                                                               ║
║                    ~ WuBu ~ GOVERNMENT                         ║
║                                                               ║
║                      CERTIFICATE                              ║
║                                                               ║
║  ─────────────────────────────────────────────────────────   ║
║                                                               ║
║  WBU-YYYY-NNNN-C                                              ║
║                                                               ║
║  This certifies that:                                         ║
║                                                               ║
║  [Name / Lodge Name]                                          ║
║                                                               ║
║  WID: [WID]                                                   ║
║                                                               ║
║  Has been duly recognized as:                                 ║
║                                                               ║
║  [Citizen / Lodge / Token Holder]                             ║
║                                                               ║
║  Of the ~ WuBu ~ Government.                                  ║
║                                                               ║
║  Date: [Date]                                                 ║
║                                                               ║
║  Signed,                                                      ║
║  _________________________                                    ║
║  [Founder / Mint Director]                                    ║
║                                                               ║
║  DOCKET: WBU-YYYY-NNNN-C | HASH: sha256:...                  ║
║                                                               ║
╚═══════════════════════════════════════════════════════════════╝
```

---

## Part 5 — The W Vault Records

### 5.1 — What is Stored

The W Vault stores:
1. **Stamped coins** (pennies, foreign coins, plastic tokens).
2. **Physical certificates** (citizenship, lodge, W Token).
3. **The Docket Book** (physical ledger).
4. **The Great Seal** (physical embosser).
5. **Official proclamations** (originals).
6. **Founding documents** (GOV-1, LICENSE, original filings).

### 5.2 — Access Rules

| Access Level | Who | What |
|--------------|-----|------|
| **Public Viewing** | Anyone | View documents, no touching |
| **Citizens** | WID holders | View and photograph |
| **Lodge Leaders** | Verified | Lodge charter access |
| **Officers** | Founder, Bureau Chief, Mint Director | Full access |
| **Docket Master** | Assigned | Full access + filing |

### 5.3 — Records Retention

| Document Type | Retention |
|---------------|-----------|
| Founding documents | Permanent |
| Proclamations | Permanent |
| Edicts | Permanent |
| Citizenship certificates | Permanent |
| W Token records | Permanent |
| Lodge charters | Permanent |
| Reports | 10 years |
| Docket filings | 7 years |
| Mission assignments | 3 years |
| Public notices | 1 year |

---

## Part 6 — The Digital Archive

### 6.1 — The Chain

The **public chain** is the digital mirror of the Docket Book:
- **Format:** SHA-256 hash chain.
- **Entries:** Every docket entry is hashed.
- **Immutable:** Once on the chain, entries cannot be changed.
- **Public:** Anyone can verify any entry.

### 6.2 — The Ledger Browser

The **Ledger Browser** (future website) allows:
- Search by docket number.
- Search by date range.
- Search by document type.
- Search by title keyword.
- View document images (if available).
- Verify document hashes.

### 6.3 — The API

The **Docket API** (future) allows:
- GET /dockets — list all dockets.
- GET /dockets/{id} — get a specific docket.
- GET /dockets?type=P — filter by type.
- GET /dockets?year=2026 — filter by year.
- POST /dockets — submit a new filing (authenticated).

---

## Part 7 — Operations

### 7.1 — The Docket Office

The **Docket Office** is the physical location for filing:
- **Location:** The W Vault.
- **Hours:** By appointment.
- **Services:** Filing, docketing, certification, seal
  embossing, document retrieval.

### 7.2 — The Docket Master

The **Docket Master** is the officer in charge:
- **Appointed by:** The founder.
- **Responsibilities:** Maintain the Docket Book, assign docket
  numbers, verify filings, manage the W Vault.

### 7.3 — The Records Archivist

The **Records Archivist** manages physical storage:
- **Appointed by:** The founder.
- **Responsibilities:** Organize, preserve, and provide access
  to physical documents.

*Form GOV-55 — The Docket System. Filed. Done. Next.*
