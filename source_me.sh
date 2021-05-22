#!/usr/bin/env bash

#######################################################
### Source this file to set all the needed environment
### variables from one replace prior to running the
### cloning and DR test playbooks
#######################################################

if [[ "$(basename -- "$0")" == "source_me.sh" ]]; then
    echo "Don't run $0, source it in a console window prior to running the playbook" >&2
    exit 1
fi

set -x

### Common info
export RUN_AS="dbadmin"

### Source-side info for the DR demo
export SRC_FB_MGMT="10.99.100.100"
export SRC_FB_DATA="10.99.100.101"
export SRC_FB_API="T-deadbeef-f00d-cafe-feed-1337c0ffee"
export SRC_BUCKET="bos"
export SRC_PREFIX="/prod/"
export SRC_AWS_PROFILE="default"

### Destination/Target-side info for the DR demo
export DST_FB_MGMT="10.99.101.100"
export DST_FB_DATA="10.99.101.101"
export DST_FB_API="T-deadbeef-f00d-cafe-feed-1337c0ffee"
export DST_BUCKET="bos-dr"
export DST_PREFIX="/test/"
export DST_AWS_PROFILE="default"

### Info for the Cloning demo
export PUREFB_API="$DST_FB_API"
export PUREFB_URL="$DST_FB_MGMT"
export PUREFB_DAT="$DST_FB_DATA"
export CLN_SRC_PRE="$SRC_PREFIX"
export CLN_DST_PRE="$DST_PREFIX"

set +x
