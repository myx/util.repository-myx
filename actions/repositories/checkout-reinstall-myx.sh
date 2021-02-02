#!/usr/bin/env bash

[ -d "$MMDAPP/source" ] || ( echo "ERROR: expecting 'source' directory." >&2 && exit 1 )

echo "Checkout/reinstall myx repository script started"
