#/bin/sh

[ -d "$MMDAPP/source" ] || ( echo "ERROR: expecting 'source' directory." >&2 && exit 1 )

. "$MMDAPP/source/myx/myx.distro-source/sh-scripts/CompileCachedJavaProject.fn.sh"

CompileCachedJavaProject "myx/myx.distro-source"
