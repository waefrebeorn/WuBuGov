# WuBuGov Public Email Repository System

**The address of the space is waefrebeorn.org. The voice of the space is its
mail.**

This document defines the public email repository system — a professional,
authenticated email infrastructure on the waefrebeorn.org domain, registered
through Namecheap, served through Cloudflare, and gated by the 7 Magic Key
Processor (Key 2: Mail).

## Goal

- **Professional:** postmaster@waefrebeorn.org, hello@waefrebeorn.org, and
  gov@waefrebeorn.org all resolve and work.
- **Free / cheap:** use free tiers (Cloudflare Email Routing, or a cheap
  provider like Zoho Mail free tier) — no enterprise mail costs.
- **Authenticated:** SPF, DKIM, and DMARC properly configured so mail is
  trusted, not spam.
- **Public repository:** a public mailbox that accepts mail from anyone in
  the ~ WuBu ~ space — pennies by mail, license questions, collaboration.

## Architecture (free tier)

```
Namecheap (registrar)
   └── waefrebeorn.org NS → Cloudflare (free plan)
            └── DNS records managed in Cloudflare
                 ├── MX → mail provider
                 ├── TXT → SPF, DKIM, DMARC
                 ├── A / CNAME → website (GitHub Pages or Cloudflare Pages)
                 └── _dmarc → DMARC policy
```

### Option A: Cloudflare Email Routing (FREE, recommended)
Cloudflare Email Routing is free and requires no mailbox hosting:
1. In Cloudflare dashboard → Email → Email Routing → enable.
2. Add custom addresses: `postmaster@waefrebeorn.org`,
   `hello@waefrebeorn.org`, `gov@waefrebeorn.org`.
3. Set destination: a personal Gmail/ProtonMail address (the dual-citizen
   mailbox).
4. Cloudflare automatically adds the MX and TXT records for you.

**Pros:** $0 forever. DNS + mail + HTTPS all in one dashboard.
**Cons:** Send-as requires configuring the destination provider to send
from the domain (SMTP). For sending, either:
  - Use Cloudflare's destination-address SMTP, or
  - Use Zoho Mail free tier (5GB, custom domain, IMAP/SMTP) for sending.

### Option B: Zoho Mail Free (cheap, professional)
Zoho Mail free plan supports one custom domain with up to 5 users:
1. Sign up at zoho.com/mail, add waefrebeorn.org.
2. Zoho gives you MX records → add them in Cloudflare DNS.
3. Add SPF record: `v=spf1 include:zoho.eu ~all`
4. Add DKIM: Zoho generates a TXT record → add in Cloudflare.
5. Add DMARC: `v=DMARC1; p=quarantine; rua=mailto:postmaster@waefrebeorn.org`
6. Configure IMAP/SMTP in any client: `imap.zoho.eu`, `smtp.zoho.eu`.

**Pros:** Real mailbox, IMAP/SMTP, sends as the domain, professional.
**Cons:** Free tier has storage limits; fine for a solo government.

## Required DNS records (summary)

```
Record   Type   Name                 Value
───────  ─────  ───────────────────  ─────────────────────────────────────
MX       MX     @                    10 mx.zoho.eu (or Cloudflare routing)
TXT      TXT    @                    v=spf1 include:zoho.eu ~all
TXT      TXT    zmail._domainkey     v=DKIM1; k=rsa; p=<zoho-generated>
TXT      TXT    _dmarc               v=DMARC1; p=quarantine; rua=mailto:postmaster@waefrebeorn.org
A        A      @                    185.199.108.153 (GitHub Pages)
AAAA     AAAA   @                    2606:50c0:8000::153 (GitHub Pages)
CNAME    CNAME  www                  waefrebeorn.github.io
```

## The public mailbox (repository system)

The public mailbox is a **repository** in the literal sense: it receives,
stores, and makes public (with consent) the correspondence of the space.

### Addresses

| Address | Purpose |
|---------|---------|
| `postmaster@waefrebeorn.org` | Technical mail, infrastructure, key issues |
| `hello@waefrebeorn.org` | General inquiries, collaboration |
| `gov@waefrebeorn.org` | Government-grade correspondence |
| `pennies@waefrebeorn.org` | Penny Clause questions & penny receipts |

### Authentication (Key 2)

All mail is authenticated:
- **Inbound:** SPF + DKIM + DMARC verified by the receiving provider.
- **Signed:** Outbound official mail signed with the Seal Key (GPG,
  ed25519) — public key published in WuBuGov `keys/seal-key.asc`.
- **Human check:** WaefreBeorn personally reads the mailbox. No AI gate
  on the public mailbox (the space is human).

## Playbook: first-time setup

1. **Namecheap:** log in → Domain List → waefrebeorn.org → Nameservers →
   set to Cloudflare's two nameservers (e.g. `amy.ns.cloudflare.com`,
   `barry.ns.cloudflare.com`).
2. **Cloudflare:** sign up (free) → Add site → waefrebeorn.org → choose
   Free plan → copy the two assigned nameservers → set them at Namecheap.
3. Wait for DNS propagation (minutes to hours).
4. **Email:** enable Cloudflare Email Routing (Option A) or Zoho (Option B)
   and add the MX/TXT records above.
5. **HTTPS:** in Cloudflare → SSL/TLS → set mode **Full (strict)** → enable
   Always Use HTTPS + HSTS. Universal SSL certificate activates free.
6. **Website:** GitHub Pages (free) or Cloudflare Pages (free) serving
   from the `waefrebeorn.github.io` repo. Custom domain: waefrebeorn.org.
7. **Verify:** use mxtoolbox.com or mail-tester.com to check SPF/DKIM/DMARC.

## Verification checklist

- [ ] waefrebeorn.org nameservers point to Cloudflare
- [ ] MX record resolves (mx.zoho.eu or Cloudflare routing)
- [ ] SPF passes (mxtoolbox.com)
- [ ] DKIM passes (mail-tester.com)
- [ ] DMARC policy = quarantine, reporting to postmaster
- [ ] HTTPS active (https://waefrebeorn.org loads with padlock)
- [ ] postmaster@waefrebeorn.org sends and receives
- [ ] Seal key published at keys/seal-key.asc
- [ ] Penny Clause address published (P.O. Box)
