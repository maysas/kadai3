#!/bin/bash 

    expr "$1" + 1 >/dev/null 2>&1
    if [ $? -ge 2 ]; then
        echo "NG"
        exit 2
    fi
    
    expr "$2" + 1 >/dev/null 2>&1
    if [ $? -ge 2 ]; then
        echo "NG"
        exit 2
    fi

#    return 0

  
    v=("$@");
    max=$1;
    min=$2;
    memo=0;

#if   IsNumeric $@  then 

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

#else

#    exit 0

#fi

echo $min
