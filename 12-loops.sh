#! /bin/bash

USERID=$(id -u)
CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo " kindly run this script as root user "
    fi 
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo " $2 is failed "
    else
        echo " $2 is sucess "
    fi
}

for package in $@ # $@ refers to all the argu passed to it 
do 
    apt list installed $package
    if [ $? -ne 0]
    then 
        echo "$package is not installed, going to install it.. "
        apt install $package -y
        VALIDATE $? "installing  $package "
    else
        echo "$package is install sucessfully , nothing to do "
    fi

done