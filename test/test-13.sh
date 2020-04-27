#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -13 $arg | diff -u --from-file ${arg}.eta - || exit 1
done
