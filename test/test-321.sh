#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -321 $arg ${arg}_2 | diff -u --from-file ${arg}.eta.321 - || exit 1
done
