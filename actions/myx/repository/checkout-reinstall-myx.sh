#!/usr/bin/env bash


set -e
APP="$( cd $(dirname "$0")/../../../../../.. ; pwd )"
echo "$(basename "$0"): working at: $APP"

ACTION="$APP/source/myx/util.repository-myx/actions/repositories/checkout-reinstall-myx.sh"
[ -f "$ACTION" ] || ( echo "expecting 'action' script." >&2 && exit 1 )

"$ACTION"