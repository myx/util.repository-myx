#!/bin/sh

####
## Note: this is a special script that is designed 
##       to run stand-alone (no location on local 
##       file-system) and on un-prepared OS. 
####

TGT_APP_PATH="$TGT_APP_PATH"
[ -z "$TGT_APP_PATH" ] && echo "'TGT_APP_PATH' env must be set" >&2 && exit 1

echo "Installing myx.distro repository into: $TGT_APP_PATH"
