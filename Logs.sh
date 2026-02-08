#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER= "/var/log/shell-script"
LOG_File="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
   echo "Please run this script with root user access"
   exit 1
fi 

mkdir -p $LOGS_FOLDER

VALIDATE()
{
if [ $1 -ne 0 ]; then
   echo "$2 ... Failed"
   exit 1

else
   echo "$2 .... Passed"
fi
}

echo "Installing Nginx"
dnf install nginx -y & >> $LOG_File

VALIDATE $? "Nginx Installation"

echo "Hello Installation done"