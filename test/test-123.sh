#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -123 $arg | diff -u --from-file ${arg}.eta - || exit 1
done