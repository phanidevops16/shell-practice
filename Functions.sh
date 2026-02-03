#!/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]; then
   echo "Please run this script with root user access"
   exit 1
fi 

VALIDATE()
{
if [$1 -ne 0]; then
   echo "$2 ... Failed"
   exit 1

else
   echo "$2 .... Passed"
fi
}

echo "Installing Nginx"
dnf install nginx -y

VALIDATE $? "Nginx Installation"