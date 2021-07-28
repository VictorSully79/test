// UberAlmostWorks
// Victor Sullivan
// 20210727
// Script to show router info
// iname = router / destdir = destination of file to write to
//

#!/bin/bash

iname=$(ip -o link show | sed -rn '/^[0-9]+: en/{s/.: ([^:]*):.*/\1/p}')
destdir=/test/output.txt
if [ -f "$destdir" ]
then
echo "$iname" > "$destdir"
fi
