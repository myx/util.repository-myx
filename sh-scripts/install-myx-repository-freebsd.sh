#!/bin/sh

####
## Note: this is a special script that is designed 
##       to run stand-alone (no location on local 
##       file-system) and on un-prepared OS. 
####

TGT_APP_PATH="${TGT_APP_PATH:-$1}"
test -z "$TGT_APP_PATH" && echo "'TGT_APP_PATH' env must be set" >&2 && exit 1

##########################
echo "Installing packages"


test -z "`which myx.common`" && (fetch https://raw.githubusercontent.com/myx/os-myx.common-freebsd/master/sh-scripts/install-myx.common-freebsd.sh -o - | sh -e)
test -z "`which bash`" -o -z "`which git`" && pkg install -y bash git


###########################################################
echo "Installing myx.distro repository into: $TGT_APP_PATH"



# download scripts and run them


############
echo "Done."