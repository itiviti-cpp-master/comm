#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -2 -1 $arg ${arg}_2 | diff -u --from-file ${arg}.eta.12 - || exit 1
done
