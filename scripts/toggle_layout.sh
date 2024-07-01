#!/bin/sh

CURRENT_LAYOUT=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ $CURRENT_LAYOUT = "us" ]; then
	setxkbmap de
else
	setxkbmap us
fi
