#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -32 $arg ${arg}_2 | diff -u --from-file ${arg}.eta.32 - || exit 1
done
