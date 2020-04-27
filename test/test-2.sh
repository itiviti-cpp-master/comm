#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -2 $arg | diff -u --from-file ${arg}.eta.2 - || exit 1
done
