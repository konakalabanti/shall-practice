#!/bin/bash

USERID=$(id -u)
 
 if [ $USERID -ne 0 ] ; then
   echo "please switch to root"
   exit 1
 fi

 VALIDATE() {

    if [ $1 -ne 0 ] ; then
     echo "$2 ....FAILURE"
     exit 1
    
     else 
       echo "$2.... SUCCESS"
    fi
}

   dnf install nginx -y
   VALIDATE $1 "installing nginx"

   
   dnf install mysql -y
   VALIDATE $1 "installing mysql"


   dnf install nodejs -y
   VALIDATE $1 "installing nodejs"


   