#!/usr/bin/env bash

if [ -z "$MMDAPP" ] ; then
	set -e
	export MMDAPP="$( cd $(dirname "$0")/../../../../../.. ; pwd )"
	echo "$0: Working in: $MMDAPP"  >&2
	[ -d "$MMDAPP/source" ] || ( echo "ERROR: expecting 'source' directory." >&2 && exit 1 )
fi

ACTION="$MMDAPP/source/myx/util.repository-myx/actions/repositories/checkout-reinstall-myx.sh"
[ -f "$ACTION" ] || ( echo "ERROR: expecting 'action' script." >&2 && exit 1 )

. "$ACTION"