#!/bin/bash

USERID=$(id -u)
 
 if [ $USERID -ne 0 ] ; then
   echo "please switch to root"
   exit 1
 fi
  echo "please install Nginx"
   dnf install nginx -y


   if [ $? -ne 0 ] ; then
     echo "INGIX INSTALLATOION ....FAILURE"
     exit 1
    

      else 
       echo "INGIX INSTALLATION.... SUCCESS"
    fi
   echo "please install MYSQL"
   dnf install mysql -y


   if [ $? -ne 0 ] ; then
     echo "MYSQL INSTALLATOION..... FAILURE"
     exit 1
    

      else 
       echo "MYSQL INSTALLATION..... SUCCESS"
    fi

    echo "please install nodejs"
    dnf install nodejs -y


   if [ $? -ne 0 ] ; then
     echo "NODJS INSTALLATOION.... FAILURE"
     exit 1
    

      else 
       echo "NODEJS INSTALLATION ....SUCCESS"
    fi