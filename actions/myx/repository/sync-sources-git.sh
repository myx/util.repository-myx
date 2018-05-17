#!/bin/sh


set -e
APP="$( cd $(dirname "$0")/../../../../../.. ; pwd )"
echo "$(basename "$0"): working at: $APP"

"$APP/source/myx/util.repository-myx/sh-scripts/sync-all-sources-myx.sh"
