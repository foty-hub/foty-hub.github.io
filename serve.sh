#!/usr/bin/env bash

if { [ -n "${BASH_VERSION:-}" ] && [[ "${BASH_SOURCE[0]}" != "$0" ]]; } ||
  { [ -n "${ZSH_VERSION:-}" ] && [[ "${ZSH_EVAL_CONTEXT:-}" == *:file ]]; }; then
  echo "Run this script as ./serve.sh, not with source/. serve.sh" >&2
  return 1 2>/dev/null || exit 1
fi

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
bundle exec jekyll serve --host "$HOST" --port "$PORT" "$@"
