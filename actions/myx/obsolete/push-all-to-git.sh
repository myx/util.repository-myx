#/bin/sh

if [ -z "$APP" ] ; then
	set -e
	APP="$( cd $(dirname "$0")/../../../../../.. ; pwd )"
	echo "$0: Working in: $APP"  >&2
	[ -d "$APP/source" ] || ( echo "expecting 'source' directory." >&2 && exit 1 )
fi


# . "$APP/actions/myx/export-myx.ru-to-acm2h1.myx.ru.sh"
# . "$APP/actions/farm/rsync-dns-from-acm2h1.sh"

set -xe


( set -xe ; cd "$APP/source/myx/myx-public.keys/" ; git pull ; git push origin master ) &
( set -xe ; cd "$APP/source/prv/" ; git push --all google ) &


wait

