#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -31 $arg ${arg}_2 | diff -u --from-file ${arg}.eta.31 - || exit 1
done
