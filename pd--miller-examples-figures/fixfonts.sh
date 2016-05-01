#!/bin/sh

for i in $* ; do
    if grep -l "findfont 10" $i ; then
        awk -f awkfile $i > /tmp/zz.ps
        mv /tmp/zz.ps $i
    fi
done
