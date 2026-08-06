#!/usr/bin/env bash
# store-key.sh — Store a key into the GPG vault (Key 1-4, 6)
# ~ WuBuGov ~
# Usage: ./store-key.sh <path.dotted.key> <value>
# Example: ./store-key.sh cloudflare.api_token <paste-token>
set -euo pipefail

VAULT="${VAULT:-$HOME/.hermes/vault/vault.yaml.gpg}"
KEY_PATH="$1"
VALUE="$2"

if [ -z "$KEY_PATH" ] || [ -z "$VALUE" ]; then
  echo "usage: $0 <dotted.key.path> <value>" >&2
  exit 1
fi

# Decrypt current vault, set key (yq-free: python), re-encrypt
TMP="$(mktemp)"
gpg --quiet --decrypt "$VAULT" > "$TMP" 2>/dev/null

python3 - "$TMP" "$KEY_PATH" "$VALUE" <<'PY'
import sys, yaml
path, val = sys.argv[2], sys.argv[3]
d = yaml.safe_load(open(sys.argv[1]))
node = d
parts = path.split(".")
for p in parts[:-1]:
    node = node.setdefault(p, {})
node[parts[-1]] = val
open(sys.argv[1], "w").write(yaml.safe_dump(d))
PY

gpg --quiet --yes --encrypt --recipient "$(gpg --list-keys --with-colons | awk -F: '/^pub/{print $5; exit}')" --output "$VAULT" "$TMP"
rm -f "$TMP"
echo "~ stored $KEY_PATH into vault ✓"
