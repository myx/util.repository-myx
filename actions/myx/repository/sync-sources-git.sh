#!/bin/sh

[ -d "$MMDAPP/source" ] || ( echo "ERROR: expecting 'source' directory." >&2 && exit 1 )

. "$MMDAPP/source/myx/util.repository-myx/sh-scripts/sync-all-sources-myx.sh"
