#! /bin/bash

DISK_USAGE=$(df -hT | grep xfs )
DISK_THRESHOLD=5 # IN OUR PROD PROJECT WE WILL SET THIS FOR 75%


while IFS= read -r line #IFS, internal field seperatpor, empty it will ignore while space.-for not to ignore spical care /

do
    echo $line
    

done <<< $DISK_USAGE