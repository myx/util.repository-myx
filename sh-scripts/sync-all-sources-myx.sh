#!/usr/bin/env bash

if [ -z "$MMDAPP" ] ; then
	set -e
	export MMDAPP="$( cd $(dirname "$0")/../../../.. ; pwd )"
	echo "$0: Working in: $MMDAPP"  >&2
	[ -d "$MMDAPP/source" ] || ( echo "ERROR: expecting 'source' directory." >&2 && exit 1 )
fi

. "`myx.common which lib/async`"
. "`myx.common which git/cloneSync`"

async(){
	Async -2 GitCloneSync "$MMDAPP/source/$@"
	# Async -3 myx.common git/cloneSync "$MMDAPP/source/$@"
}

async "myx/util.repository-myx/"				"git@github.com:myx/util.repository-myx.git"

async "myx/myx.distro-source/"					"git@github.com:myx/myx.distro-source.git"
async "myx/myx.distro-deploy/"					"git@github.com:myx/myx.distro-deploy.git"

async "myx/myx.common/os-java"					"git@github.com:myx/myx-distro-meta-os-java.git"
# async "myx/myx.common/os-ruby"				"git@github.com:myx/myx-distro-meta-os-ruby.git"
# async "myx/myx.common/os-golang"				"git@github.com:myx/myx-distro-meta-os-golang.git"

async "myx/myx-public.keys/"					"git@github.com:myx/myx-public.keys.git"

wait

async "myx/clean-boot/"                        	"git@github.com:myx/clean-boot.git"
async "myx/clean-jdbc.util/"                   	"git@github.com:myx/clean-jdbc.util.git"
async "myx/clean-yaumnrc/"                     	"git@github.com:myx/clean-yaumnrc.git"

async "myx/clean-java.e5/"                     	"git@github.com:myx/clean-java.e5.git"
async "myx/clean-java.io/"                     	"git@github.com:myx/clean-java.io.git"
async "myx/clean-java.util/"                   	"git@github.com:myx/clean-java.util.git"


async "myx/web/static-cdn.myx/"					"git@github.com:myx/web-static-cdn.myx.git"

wait

async "myx/myx.common/os-myx.common/"          	"git@github.com:myx/os-myx.common.git"
async "myx/myx.common/os-myx.common-freebsd/"  	"git@github.com:myx/os-myx.common-freebsd.git"
async "myx/myx.common/os-myx.common-ubuntu/"   	"git@github.com:myx/os-myx.common-ubuntu.git"
async "myx/myx.common/os-myx.common-macosx/"   	"git@github.com:myx/os-myx.common-macosx.git"

wait

INF="$MMDAPP/source/myx/util.repository-myx/sh-data/repository/repository.inf"
( set -e ; echo "# copied from $INF at `date`" ; cat "$INF" ) > "$MMDAPP/source/myx/repository.inf"
