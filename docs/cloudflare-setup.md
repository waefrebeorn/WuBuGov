# Cloudflare Setup — Free HTTPS for the Whole Space

**WaefreBeorn runs free and professional.** This is the Cloudflare playbook
for waefrebeorn.org and every subdomain of the space.

## Why Cloudflare

- **Free HTTPS** (Universal SSL) on every WuBu domain
- **Free DNS** with global edge, instant propagation
- **Free CDN** — static sites served from 300+ edge locations
- **Free Email Routing** (or pair with Zoho free mail)
- **Free Pages** — deploy the website from GitHub for $0
- **Free WAF** basics, bot protection, DDoS absorption
- **Professional:** proper TLS, HSTS, security headers

## Step 1 — Add the site

1. Sign up at dash.cloudflare.com (free).
2. Add site → enter `waefrebeorn.org`.
3. Select **Free** plan.
4. Cloudflare scans existing DNS (from Namecheap) and imports records.
5. Cloudflare assigns two nameservers, e.g.:
   - `amy.ns.cloudflare.com`
   - `barry.ns.cloudflare.com`

## Step 2 — Point the domain at Cloudflare

At **Namecheap**:
1. Log in → Domain List → `waefrebeorn` → Nameservers.
2. Select **Custom DNS**.
3. Enter the two Cloudflare nameservers.
4. Save. Propagation takes minutes to a few hours.

## Step 3 — SSL mode (the important one)

In Cloudflare → SSL/TLS → Overview:
- **Mode:** Full (strict) — encrypts browser↔edge and edge↔origin, and
  validates the origin cert. For GitHub Pages / Cloudflare Pages origins,
  this is the correct, professional setting.
- **Always Use HTTPS:** ON
- **Automatic HTTPS Rewrites:** ON

In SSL/TLS → Edge Certificates:
- **Certificate:** Universal SSL (auto-issued, free, auto-renewed).
- **HSTS:** enable with max-age 31536000, include subdomains, preload
  (after confirming the site works over HTTPS).

## Step 4 — DNS records for the whole space

```
Type    Name                  Content / Target                 Proxied?
─────   ───────────────────   ─────────────────────────────   ────────
A       @                     185.199.108.153 (GitHub Pages)   Proxied
AAAA    @                     2606:50c0:8000::153              Proxied
CNAME   www                   waefrebeorn.github.io            Proxied
MX      @                     10 mx.zoho.eu (or CF routing)    DNS only
TXT     @                     v=spf1 include:zoho.eu ~all      DNS only
TXT     _dmarc                v=DMARC1; p=quarantine; rua=mailto:postmaster@waefrebeorn.org  DNS only
```

Subdomains of the space, each free on the same plan:

| Subdomain | Purpose |
|-----------|---------|
| `www.waefrebeorn.org` | Canonical website |
| `gov.waefrebeorn.org` | WuBuGov portal |
| `mail.waefrebeorn.org` | Webmail / mail config |
| `*.waefrebeorn.com` | (legacy 501 redirects — see note) |

## Step 5 — Website hosting (free)

Two options, both $0:

### GitHub Pages
1. Repo `waefrebeorn/waefrebeorn.github.io` already exists.
2. Push a static site to `main` (or use a Jekyll/plain HTML site).
3. Settings → Pages → Custom domain → `waefrebeorn.org`.
4. Cloudflare CNAME `@` → `waefrebeorn.github.io` (proxied) handles it.

### Cloudflare Pages (alternative)
1. Connect the GitHub repo in Cloudflare Pages.
2. Build settings: none (static) — or any framework.
3. Custom domain: `waefrebeorn.org`.
4. Automatic HTTPS + global CDN, zero config.

## Step 6 — Verify

- https://waefrebeorn.org → padlock, HSTS header present
- https://www.waefrebeorn.org → redirects to apex
- `curl -I https://waefrebeorn.org` → HTTP/2 or HTTP/3
- Cloudflare dashboard → Overview → all records proxied/orange-clouded
- SSL/TLS → Edge Certificates → Universal SSL = Active

## Legacy .com note

The user profile notes `{concept}.waefrebeorn.com` currently serves a 501
redirect. Under the new system, waefrebeorn.com can either:
- (a) 301-redirect to the .org equivalent (professional, recommended), or
- (b) stay as a legacy playground with the 501 stub (fun, but not
  professional). For a government-grade space: **a)** — the .org is the
  canonical address; the .com becomes a redirect.

## The cost

| Item | Cost |
|------|------|
| waefrebeorn.org (Namecheap) | ~$11/year (already owned) |
| Cloudflare Free plan | $0 |
| Universal SSL | $0 |
| Email routing | $0 |
| Zoho Mail free (optional send) | $0 |
| GitHub Pages / CF Pages | $0 |
| **Total** | **$11/year** |

**That is the whole space, professionally hosted, for less than a penny a
day.** The Penny Clause covers the rest.
