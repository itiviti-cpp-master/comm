#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -312 $arg ${arg}_2 | diff -u --from-file ${arg}.eta.312 - || exit 1
done
