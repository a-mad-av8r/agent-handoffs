#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if [[ -f .env ]]; then
  set -a
  # shellcheck disable=SC1091
  source .env
  set +a
fi

HANDOFF_DB="${HANDOFF_DB:-.handoffs/handoffs.db}"
mkdir -p "$(dirname "$HANDOFF_DB")"

if ! command -v sqlite3 >/dev/null 2>&1; then
  echo "sqlite3 is required for the public local demo" >&2
  exit 1
fi

sqlite3 "$HANDOFF_DB" < schema.sql
echo "Agent Handoffs store ready: $HANDOFF_DB"
