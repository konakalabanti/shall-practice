#!/bin/bash

USERID=$(id -u)
 
if [ $USERID -ne 0 ] ; then
   echo "please switch to root"
   exit 1
fi
echo "please install Nginx"
   dnf install nginx -y


   if [ $? -ne 0 ] ; then
     echo "INGIX INSTALLATOION FAILURE"
     exit 1
    

      else 
       echo "INGIX INSTALLATION SUCCESS"
    fi