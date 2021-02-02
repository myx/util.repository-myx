#/bin/sh

[ -d "$MMDAPP/source" ] || ( echo "ERROR: expecting 'source' directory." >&2 && exit 1 )

# . "$MMDAPP/actions/myx/export-myx.ru-to-acm2h1.myx.ru.sh"
# . "$MMDAPP/actions/farm/rsync-dns-from-acm2h1.sh"

set -xe


( set -xe ; cd "$MMDAPP/source/myx/myx-public.keys/" ; git pull ; git push origin master ) &
( set -xe ; cd "$MMDAPP/source/prv/" ; git push --all google ) &


wait

