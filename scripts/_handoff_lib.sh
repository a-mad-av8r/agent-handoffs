#!/usr/bin/env bash

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

if [[ -f .env ]]; then
  set -a
  # shellcheck disable=SC1091
  source .env
  set +a
fi

HANDOFF_DB="${HANDOFF_DB:-.handoffs/handoffs.db}"
HANDOFF_PROJECT="${HANDOFF_PROJECT:-local}"

sql_escape() {
  printf "%s" "$1" | sed "s/'/''/g"
}

require_db() {
  if ! command -v sqlite3 >/dev/null 2>&1; then
    echo "sqlite3 is required" >&2
    exit 1
  fi
  if [[ ! -f "$HANDOFF_DB" ]]; then
    echo "Database not found at $HANDOFF_DB. Run ./setup.sh first." >&2
    exit 1
  fi
}

new_handoff_id() {
  printf "hnd_%s_%s" "$(date +%s)" "$$"
}
