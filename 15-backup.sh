#! /bin/bash

$SOURCE_DIR=$1
$DEST_DIR=$2

USAGE(){
    echo -e " USAGE:: sh 15-backup.sh <source> <dest> "
}

if [$# -lt 0 ]
then 
    USAGE
fi
