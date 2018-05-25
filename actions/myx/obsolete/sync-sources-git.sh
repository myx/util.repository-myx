#!/bin/sh


if [ -z "$MMDAPP" ] ; then
	set -e
	export MMDAPP="$( cd $(dirname "$0")/../../../../../.. ; pwd )"
	echo "$0: Working in: $MMDAPP"  >&2
	[ -d "$MMDAPP/source" ] || ( echo "expecting 'source' directory." >&2 && exit 1 )
fi

#"$MMDAPP/source/myx/util.repository-myx/sh-scripts/sync-all-sources-myx.sh"
. "$MMDAPP/source/prv/util.workspace-ws2017/sh-scripts/sync-all-sources-ws2017.sh"
