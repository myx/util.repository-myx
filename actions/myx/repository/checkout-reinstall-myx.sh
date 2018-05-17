#!/usr/bin/env bash

if [ -z "$APP" ] ; then
	set -e
	APP="$( cd $(dirname "$0")/../../../../../.. ; pwd )"
	echo "$0: Working in: $APP"  >&2
	[ -d "$APP/source" ] || ( echo "expecting 'source' directory." >&2 && exit 1 )
fi

ACTION="$APP/source/myx/util.repository-myx/actions/repositories/checkout-reinstall-myx.sh"
[ -f "$ACTION" ] || ( echo "expecting 'action' script." >&2 && exit 1 )

. "$ACTION"