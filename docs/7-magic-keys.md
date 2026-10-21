# The 7 Magic Key Processor

**~ WuBu ~ government-grade authentication for the whole space.**

The 7 Magic Key Processor is the authentication and key-management system for
all WuBuGov services. It is a set of seven keys, each with a distinct purpose,
each stored encrypted in the WaefreBeorn vault, each revoked and rotated
independently. Seven keys — seven gates — one space.

## The Seven Keys

### Key 1 — GitHub Key 🔑
**Purpose:** Write access to all waefrebeorn and WuBuGov repositories.
**Backend:** GitHub Personal Access Token (classic, `admin:org`, `repo`,
`workflow`) or a fine-grained token scoped to the org.
**Storage:** `~/.hermes/vault/vault.yaml.gpg` → `github.primary_token`
**Rotation:** Any time the token leaks; minimum annually.

### Key 2 — Mail Key ✉️
**Purpose:** The public email repository system — authenticate as
`postmaster@waefrebeorn.org`, send and receive public mail.
**Backend:** IMAP/SMTP credentials from the mail provider (see
[email-system.md](email-system.md)) + a PGP keypair for signed mail.
**Storage:** Vault → `mail.*`
**Rotation:** Password rotation every 90 days; PGP key on compromise.

### Key 3 — DNS Key 🌐
**Purpose:** Cloudflare API token — manage DNS records for waefrebeorn.org
and all subdomains.
**Backend:** Cloudflare API token (scoped to zone, `Zone.DNS:Edit`).
**Storage:** Vault → `cloudflare.api_token`
**Rotation:** Any time it leaks; minimum annually.

### Key 4 — Edge Key 🔒
**Purpose:** HTTPS / TLS certificate management via Cloudflare's free
Universal SSL + Full (strict) mode.
**Backend:** Cloudflare edge (no origin cert needed for static sites) or
Cloudflare Origin CA for backend services.
**Storage:** Vault → `cloudflare.edge`
**Rotation:** With Cloudflare's auto-renewal (90 days for Origin CA).

### Key 5 — Coin Key 🪙
**Purpose:** The physical penny mailbox — a P.O. Box where pennies arrive.
A ledger maps incoming pennies to licensees.
**Backend:** Physical P.O. Box + a public ledger (CSV in this repo or a
WuBuGov service).
**Storage:** Vault → `pobox.address`, ledger at `keys/coin-ledger.csv`
**Rotation:** n/a (physical). The ledger is append-only.

### Key 6 — Seal Key 🏛️
**Purpose:** Signing the umbrella license and official WuBuGov documents —
proves provenance and authenticity.
**Backend:** GPG keypair (ed25519), public key published in this repo at
`keys/seal-key.asc`.
**Storage:** Vault → `gpg.*` (private key, encrypted)
**Rotation:** On compromise only. The public key never changes identity.

### Key 7 — Root Key 👑
**Purpose:** The master recovery key — decrypts the vault itself, recovers
all other keys, and is the ultimate authority of the space.
**Backend:** The GPG master key that encrypts `vault.yaml.gpg` + a printed
paper backup stored offline.
**Storage:** `~/.hermes/vault/vault.yaml.gpg` (encrypted) + paper backup
**Rotation:** Never. Guard it like a crown.

## How the processor works

```
┌─────────────────────────────────────────────────────────┐
│                    THE 7 MAGIC KEYS                     │
│                                                         │
│  Key 1: GitHub  →  write access to all repos            │
│  Key 2: Mail    →  postmaster@waefrebeorn.org           │
│  Key 3: DNS     →  Cloudflare zone management           │
│  Key 4: Edge    →  HTTPS / TLS / Universal SSL          │
│  Key 5: Coin    →  physical penny mailbox               │
│  Key 6: Seal    →  license & document signing           │
│  Key 7: Root    →  vault recovery, master authority     │
│                                                         │
│  All seven live encrypted in one vault. **CRITICAL**: Keys should be split across 3 separate vaults (infrastructure: 1,3,4; identity: 5,6; recovery: 7) to prevent single-breach total compromise.                 │
│  Key 7 unlocks the vault; the vault holds Keys 1–6.     │
└─────────────────────────────────────────────────────────┘
```

## Rotation matrix

| Key | Rotation | Trigger | Storage |
|-----|----------|---------|---------|
| 1 GitHub | Annual | Leak / compromise | Vault `github.primary_token` |
| 2 Mail | 90 days | Compromise | Vault `mail.*` |
| 3 DNS | Annual | Leak | Vault `cloudflare.api_token` |
| 4 Edge | Auto | Cloudflare renewal | Vault `cloudflare.edge` |
| 5 Coin | n/a | n/a | Ledger + P.O. Box |
| 6 Seal | Never* | Compromise only | Vault `gpg.*` + public key |
| 7 Root | Never | Never | Vault + paper backup |

\* Seal key is rotated on compromise; its public identity changes and all
documents re-signed.

## Processor scripts

See the `keys/` directory for working scripts:

- `keys/generate-keys.sh` — generate all key material
- `keys/store-key.sh` — store a key into the GPG vault
- `keys/rotate-key.sh` — rotate a single key
- `keys/coin-ledger.csv` — the physical penny ledger template

## The law of the processor

1. **No single key unlocks everything.** Key 7 unlocks the vault, but the
   vault holds 1–6. Compromise of any one key (except 7) loses only that
   gate.
2. **Every key is stored encrypted.** Nothing in plaintext, ever.
3. **The Root Key has a paper backup.** If the vault dies, the space lives.
4. **Rotate on doubt.** If a key might be compromised, rotate it. Cost is
   trivial; confidence is not.
5. **The Coin Key is physical.** Pennies are the only key that arrives by
   mail. They are the proof-of-read of the entire space.
