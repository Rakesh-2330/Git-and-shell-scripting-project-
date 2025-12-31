#! /bin/bash

SOURCE_DIR=/home/logs

if [ -d $SOURCE_DIR ]
then
    echo " $SOURCE_DIR exists "
else
    echo " $SOURCE_DIR is not exists "
    exit 1
fi
