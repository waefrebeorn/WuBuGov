#!/usr/bin/env bash
# generate-keys.sh — Generate the 7 Magic Key Processor key material
# ~ WuBuGov ~
set -euo pipefail

KEYS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/keys"
mkdir -p "$KEYS_DIR"

echo "~ WuBuGov ~ 7 Magic Key Processor — key generation"
echo "==================================================="
echo ""

# Key 1: GitHub — instruct (token must be created on github.com, cannot be generated locally)
echo "[1/7] GitHub Key — create at https://github.com/settings/tokens"
echo "      scopes: repo, admin:org, workflow"
echo "      store:  vault github.primary_token"
echo ""

# Key 2: Mail — instruct (credentials from mail provider)
echo "[2/7] Mail Key — from mail provider (Zoho/Cloudflare routing)"
echo "      IMAP/SMTP creds → vault mail.*"
echo ""

# Key 3: DNS — instruct (Cloudflare API token)
echo "[3/7] DNS Key — create at https://dash.cloudflare.com/profile/api-tokens"
echo "      scope: Zone.DNS:Edit on waefrebeorn.org zone"
echo "      store:  vault cloudflare.api_token"
echo ""

# Key 4: Edge — handled by Cloudflare automatically (Universal SSL)
echo "[4/7] Edge Key — automatic via Cloudflare Universal SSL (free)"
echo ""

# Key 5: Coin — physical penny mailbox
echo "[5/7] Coin Key — physical P.O. Box (no generation needed)"
echo "      ledger: $KEYS_DIR/coin-ledger.csv"
if [ ! -f "$KEYS_DIR/coin-ledger.csv" ]; then
  printf 'date,sender,project,quantity,notes\n' > "$KEYS_DIR/coin-ledger.csv"
fi
echo ""

# Key 6: Seal — GPG keypair for signing
echo "[6/7] Seal Key — GPG ed25519 keypair"
if ! gpg --list-keys "WaefreBeorn Seal" >/dev/null 2>&1; then
  echo "      generating... (if unattended, run manually:)"
  echo "      gpg --full-generate-key --key-type ed25519 --usage sign"
  echo "      name: WaefreBeorn Seal <gov@waefrebeorn.org>"
else
  echo "      already exists ✓"
fi
gpg --armor --export "WaefreBeorn Seal" > "$KEYS_DIR/seal-key.asc" 2>/dev/null && echo "      public key → keys/seal-key.asc" || true
echo ""

# Key 7: Root — the vault itself
echo "[7/7] Root Key — the GPG master key encrypting ~/.hermes/vault/vault.yaml.gpg"
echo "      paper backup: print the master key fingerprint & store offline"
gpg --list-secret-keys --keyid-format=long 2>/dev/null | grep -A1 "^sec" | head -4 || echo "      (vault master key — confirm fingerprint manually)"
echo ""

echo "~ Done. The 7 keys are defined. Store 1-4 in the vault, 5 is physical,"
echo "  6 signs, 7 guards the vault. ~"
