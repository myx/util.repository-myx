#!/bin/sh

####
## Note: this is a special script that is designed 
##       to run stand-alone (no location on local 
##       file-system) and on un-prepared OS. 
####

PATH="$1"
[ -z "$PATH" ] && echo "'$PATH' argument required" >&2 && exit 1

echo "Installing myx.distro repository into: $PATH"
