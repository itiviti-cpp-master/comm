#!/bin/sh

CMD=$1
shift
for arg do
    cat ${arg}_2 | $CMD -2 $arg - | diff -u --from-file ${arg}.eta.2 - || exit 1
done
