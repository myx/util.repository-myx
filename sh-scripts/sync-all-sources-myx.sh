#!/usr/bin/env bash


set -e

APP="$( cd $(dirname "$0")/../../../.. ; pwd )"
echo "Working in: $APP"
[ -d "$APP/source" ] || ( echo "expecting 'source' directory." >&2 && exit 1 )

. "$APP/source/myx/util.repository-myx/sh-lib/syncing.sh.include"

async gitSync "myx/util.repository-myx/"	"git@github.com:myx/util.repository-myx.git"

async gitSync "myx/clean-boot/"             "git@github.com:myx/clean-boot.git"
async gitSync "myx/clean-jdbc.util/"        "git@github.com:myx/clean-jdbc.util.git"
async gitSync "myx/clean-yaumnrc/"          "git@github.com:myx/clean-yaumnrc.git"

wait

async gitSync "myx/myx.os-common/"   "git@github.com:myx/myx.os-common.git"
async gitSync "myx/myx.os-freebsd/"  "git@github.com:myx/myx.os-freebsd.git"
async gitSync "myx/myx.os-java/"     "git@github.com:myx/myx.os-java.git"
async gitSync "myx/myx.os-ubuntu/"   "git@github.com:myx/myx.os-ubuntu.git"

wait

