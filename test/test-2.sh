#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -2 $arg | diff -u --from-file ${arg}.eta.u - || exit 1
done
