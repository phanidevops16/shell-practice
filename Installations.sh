
#!/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]; then
   echo "Please run this script with root user access"
   exit 1
fi 

echo "Installing Nginx"
dnf install nginx -y

if [$? -ne 0]; then
   echo "Installing Nginx ... Failed"

else
   echo "Installing Nginx .... Passed"
fi
