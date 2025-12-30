#! /bin/bash

USERID=$(id -u)
# echo " the user id of the user is : $USERID "

VALIDATE() {
    if [ $? -ne 0 ]
    then 
        echo " $2 is failed "
    else 
        echo " $2 is success " 
    fi
}

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
    VALIDATE $? " installing git "
else 
    echo " git is already insatalled, there is nothing to do "
fi

apt list installed  mysql

if [ $? -ne 0 ]
then 
    echo " mysql is not installed, going to install it  "
    apt install mysql -y
    VALIDATE $? " installing mysql "
else 
    echo " mysql is already insatalled, there is nothing to do "
fi