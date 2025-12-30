#! /bin/bash 

NUM=$1

if [ $NUM -gt 20 ] #gt ,lt, eq, -ne
then
    echo "Given number:  $NUM is gereater then 20 "
else 
    echo "Given number: $NUM is less then 20 "

fi
