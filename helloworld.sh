#!/bin/bash

iname=$(ip -o link show | sed -rn '/^[0-9]+: en/{s/.: ([^:]*):.*/\1/p}')
destdir=/test/output.txt
if [ -f "$destdir" ]
then
echo "$iname" > "$destdir"
fi
