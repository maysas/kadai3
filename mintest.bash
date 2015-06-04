#!/bin/bash

v=("$@");
max=$1;
min=$2;
memo=0;

if [ $max -lt $min ] ; then
    memo=$max;
    max=$min;
    min=$memo;
fi

if [ $min -ne 0 ] ; then
    a=`expr $max % $min` ;
else
    a=0
fi

while [ $a -ne 0 ]
do
    max=$min;
    min=$a;
    a=`expr $max % $min`
done;

echo $min

