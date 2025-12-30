#! /bin/bash

USERID=$(id -u)
echo " the user id of the user is : $USERID "

if [ $USERID -ne 0 ]
then
    echo "pleace run this script by root access "
    exit 1
fi

dnf list installed  git 

if [ $? -ne 0 ]
then 
    echo " git is not installed, going to install it  "
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo " the git is not install sucessfully, kindly check "
        exit 1
    else
        echo " git is installed sucessful "
else 
    echo " git is already insatalled, there is nothing to do "
fi

dnf list installed  mysql

if [ $? -ne 0 ]
then 
    echo " mysql is not installed, going to install it  "
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo " the mysql is not install sucessfully, kindly check "
        exit 1
    else
        echo " mysql is installed sucessful "
else 
    echo " mysql is already insatalled, there is nothing to do "
fi






