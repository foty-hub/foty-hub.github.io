#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

HOST="${HOST:-127.0.0.1}"
PORT="${PORT:-4000}"

if ! command -v bundle >/dev/null 2>&1; then
  echo "Bundler is not installed. Install it with: gem install bundler" >&2
  exit 1
fi

if ! bundle check >/dev/null 2>&1; then
  echo "Installing missing gems..."
  bundle install
fi

echo "Starting Jekyll at http://${HOST}:${PORT}/"
exec bundle exec jekyll serve --host "$HOST" --port "$PORT" "$@"
