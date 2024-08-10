#!/usr/bin/env bash

unset GREP
GREP="$(command -v grep)"

[ -n "$GREP" ] || {
  echo "Not found: grep" \
  && exit 1
}

exec "$GREP" -vE '^(#|$| )' "$@"
