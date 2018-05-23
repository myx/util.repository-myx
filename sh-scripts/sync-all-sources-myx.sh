#!/usr/bin/env bash

if [ -z "$APP" ] ; then
	set -e
	APP="$( cd $(dirname "$0")/../../../.. ; pwd )"
	echo "$0: Working in: $APP"  >&2
	[ -d "$APP/source" ] || ( echo "expecting 'source' directory." >&2 && exit 1 )
fi

. "`myx.common which lib/async`"
. "`myx.common which lib/gitCloneSync`"

async(){
	Async -2 GitCloneSync $@
}

async "myx/util.repository-myx/"				"git@github.com:myx/util.repository-myx.git"

async "myx/myx.distro-prepare/"					"git@github.com:myx/myx.distro-prepare.git"

async "myx/clean-boot/"                        	"git@github.com:myx/clean-boot.git"
async "myx/clean-jdbc.util/"                   	"git@github.com:myx/clean-jdbc.util.git"
async "myx/clean-yaumnrc/"                     	"git@github.com:myx/clean-yaumnrc.git"

wait

async "myx/myx.common/os-myx.common/"          	"git@github.com:myx/os-myx.common.git"
async "myx/myx.common/os-myx.common-freebsd/"  	"git@github.com:myx/os-myx.common-freebsd.git"
async "myx/myx.common/os-myx.common-ubuntu/"   	"git@github.com:myx/os-myx.common-ubuntu.git"
async "myx/myx.common/os-myx.common-macosx/"   	"git@github.com:myx/os-myx.common-macosx.git"

async "myx/myx.os-java/"                       	"git@github.com:myx/myx.os-java.git"

wait

INF="$APP/source/myx/util.repository-myx/data/repository/repository.inf"
( set -e ; echo "# copied from $INF at `date`" ; cat "$INF" ) > "$APP/source/myx/repository.inf"
