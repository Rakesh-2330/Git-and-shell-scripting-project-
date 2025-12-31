#! /bin/bash

$SOURCE_DIR=$1
$DEST_DIR=$2

if [ -d $SOURCE_DIR ]
then 
    echo " $SOURCE_DIR exists "
eles
    echo " $SOURCE_DIR not exists "
    exit 1
fi 

if [ -d $DEST_DIR ]
then
    echo " $DEST_DIR exists "
else
    echo " $DEST_DIR not exists "
fi

