#!/usr/bin/env bash
set -euo pipefail

state_dir="${XDG_RUNTIME_DIR:?}/noctalia-launcher"
mkdir -p -m 700 "$state_dir"

exec 9>"$state_dir/lock"
flock -x 9

active="$state_dir/active"
interrupted="$state_dir/interrupted"

[[ -f "$active" ]] || printf '0\n' > "$active"
[[ -f "$interrupted" ]] || printf '0\n' > "$interrupted"

case "${1:-}" in
    press)
        printf '0\n' > "$interrupted"
        printf '1\n' > "$active"
        ;;
    interrupt)
        if [[ "$(cat "$active")" == "1" ]]; then
            printf '1\n' > "$interrupted"
        fi
        ;;
    release)
        if [[ "$(cat "$active")" == "1" &&
              "$(cat "$interrupted")" != "1" ]]; then
            noctalia msg panel-toggle launcher
        fi

        printf '0\n' > "$active"
        printf '0\n' > "$interrupted"
        ;;
    *)
        echo "Usage: $0 {press|interrupt|release}" >&2
        exit 2
        ;;
esac
