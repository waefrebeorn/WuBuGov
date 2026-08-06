#!/usr/bin/env bash
# rotate-key.sh — Rotate a single key of the 7 Magic Key Processor
# ~ WuBuGov ~
# Usage: ./rotate-key.sh <github|mail|dns|edge|seal>
set -euo pipefail

KEY="$1"
case "$KEY" in
  github)
    echo "~ Rotating GitHub Key (Key 1)"
    echo "  create new token: https://github.com/settings/tokens"
    echo "  then: ./store-key.sh github.primary_token <new-token>"
    ;;
  mail)
    echo "~ Rotating Mail Key (Key 2)"
    echo "  change password at mail provider, then store-key.sh mail.*"
    ;;
  dns)
    echo "~ Rotating DNS Key (Key 3)"
    echo "  new token: https://dash.cloudflare.com/profile/api-tokens"
    ;;
  edge)
    echo "~ Edge Key (Key 4) auto-rotates via Cloudflare Universal SSL"
    ;;
  seal)
    echo "~ Rotating Seal Key (Key 6)"
    echo "  generate new keypair, publish new asc, re-sign documents"
    ;;
  *)
    echo "usage: $0 <github|mail|dns|edge|seal>" >&2
    exit 1
    ;;
esac
echo "~ After rotation, update the matrix in docs/7-magic-keys.md ~"
