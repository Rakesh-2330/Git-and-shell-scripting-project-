#! /bin/bash

USERID=$(id -u)
echo " the user id of the user is : $USERID "

if [ $USERID -ne 0 ]
then
    echo "pleace run this script by root access "
    exit 1
fi

apt list installed  git 

if [ $? -ne 0 ]
then 
    echo " git is not installed, going to install it  "
    apt install git -y
    if [ $? -ne 0 ]
    then
        echo " the git is not install sucessfully, kindly check "
        exit 1
    else
        echo " git is installed sucessful "
    fi
else 
    echo " git is already insatalled, there is nothing to do "
fi

apt list installed  mysql

if [ $? -ne 0 ]
then 
    echo " mysql is not installed, going to install it  "
    apt install mysql -y
    if [ $? -ne 0 ]
    then
        echo " the mysql is not install sucessfully, kindly check "
        exit 1
    else
        echo " mysql is installed sucessful "
    fi
else 
    echo " mysql is already insatalled, there is nothing to do "
fi






