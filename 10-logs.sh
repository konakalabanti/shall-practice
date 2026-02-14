#!/bin/bash

USERID=$(id -u)
FOLDER_LOG="/var/logs/shell-script"
LOG_FILE="/var/logs/shell-scrip/$0.log
 
 if [ $USERID -ne 0 ] ; then
   echo "please switch to root"
   exit 1
 fi

mkdir -p $FOLDER_LOG

 VALIDATE() {

    if [ $1 -ne 0 ] ; then
     echo "$2 ....FAILURE"
     exit 1
    
     else 
       echo "$2.... SUCCESS"
    fi
 }

   dnf install nginx -y &>> $LOG_FILE
   VALIDATE $? "installing nginx"

   
   dnf install mysql -y  &>> $LOG_FILE
   VALIDATE $? "installing mysql"


   dnf install nodejs -y  &>> $LOG_FILE
   VALIDATE $? "installing nodejs"