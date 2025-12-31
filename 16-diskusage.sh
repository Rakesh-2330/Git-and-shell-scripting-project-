#! /bin/bash

DISK_USAGE=$(df -hT | grep xfs )
DISK_THRESHOLD=5 #in our prod we are using 75

while IFS= read -r line 
do 
    echo $line
done 
