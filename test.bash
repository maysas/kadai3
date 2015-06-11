#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2	
    rm -f $tmp-*
    exit 1
}

#####################################
# TEST1
#####################################

echo 50 > $tmp-ans
./mintest.bash 100 50 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo 10 > $tmp-ans
./mintest.bash 10 50 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

#echo a > $tmp-ans
#./mintest.bash a b > $tmp-out || ERROR_EXIT "TEST1-1"
#diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"


echo OK
rm -f $tmp-*
exit 0
