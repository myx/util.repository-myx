#!/bin/sh


if [ -z "$APP" ] ; then
	set -e
	APP="$( cd $(dirname "$0")/../../../../../.. ; pwd )"
	echo "$0: Working in: $APP"  >&2
	[ -d "$APP/source" ] || ( echo "expecting 'source' directory." >&2 && exit 1 )
fi

#"$APP/source/myx/util.repository-myx/sh-scripts/sync-all-sources-myx.sh"
. "$APP/source/prv/util.workspace-ws2017/sh-scripts/sync-all-sources-ws2017.sh"
