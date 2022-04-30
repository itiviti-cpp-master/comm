#!/bin/sh

CMD=$1
shift
for arg do
    cat ${arg}_2 | $CMD -123 $arg - | diff -u --from-file ${arg}.eta.123 - || exit 1
done
