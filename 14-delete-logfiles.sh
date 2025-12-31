#! /bin/bash

SOURCE_DIR=/home/logs

if [ -d $SOURCE_DIR ]
then
    echo " $SOURCE_DIR exists "
else
    echo " $SOURCE_DIR is not exists "
    exit 1
fi

FILES=$(find $SOURCE_DIR -name " *.log " -mtime +14 )
echo " files: $FILES "

while IFS= read -r line #IFS, internal field seperatpor, empty it will ignore while space.-for not to ignore spical care /

do
    echo " deleting line:  $line "
    rm -rf $line

done <<<
