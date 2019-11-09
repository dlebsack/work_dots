#!/usr/bin/env bash

#Dependencies
# -i3lock -Scrot -Imagmagick

LOCK_IMG=/tmp/pixellock.png
SNAPSHOT_CMD="scrot $LOCK_IMG"
[ ! "$BLUR" ] && BLUR=${1:-2}

SCALE1="10%" SCALE2="1000%"
$SNAPSHOT_CMD
convert $LOCK_IMG -scale $SCALE1 -scale $SCALE2 $LOCK_IMG
i3lock -i $LOCK_IMG
rm $LOCK_IMG
