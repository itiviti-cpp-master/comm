#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -21 $arg ${arg}_2 | diff -u --from-file ${arg}.eta.21 - || exit 1
done
