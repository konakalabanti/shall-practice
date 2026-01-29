#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "please run the script with user user"

   exit 1 #install chese vadu root user kakapothe exit avvu ani 
fi

echo "Installing Nginx" #for printing
dnf install nginx -y  #command 

if [ $? -ne 0 ]; then  #for previous command excute ayindha ha kaledha ane command
   echo "Installing Nginx ... FAILURE" #for printing
   exit 1

else #failre kakapothe 
   echo "Installing Nginx ... SUCCESS" #ani evvu

fi
