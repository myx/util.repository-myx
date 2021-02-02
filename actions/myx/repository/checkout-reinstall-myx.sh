#!/usr/bin/env bash

[ -d "$MMDAPP/source" ] || ( echo "ERROR: expecting 'source' directory." >&2 && exit 1 )

ACTION="$MMDAPP/source/myx/util.repository-myx/actions/repositories/checkout-reinstall-myx.sh"
[ -f "$ACTION" ] || ( echo "ERROR: expecting 'action' script." >&2 && exit 1 )

. "$ACTION"