#!/bin/bash

USERID=$(id -u)
FOLDER_LOG="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"
 
 if [ $USERID -ne 0 ] ; then
   echo "please switch to root" | tee -a $LOG_FILE
   exit 1
 fi


 VALIDATE() {

    if [ $1 -ne 0 ] ; then
     echo "$2 ....FAILURE"  |tee -a $LOG_FILE
     exit 1
    
     else 
       echo "$2.... SUCCESS" | tee -a $LOG_FILE
    fi
 }

   for PACKAGE in $@
     do
        dnf list installed $PACKAGE &>> $LOG_FILE
        if [ $? -ne 0 ] ; then
         echo "$PACKAGE is not installed , instaling now"

         dnf install $PACKAGE -y &>> $LOG_FILE
         VALIDATE $? "$PACKAGE installing"

         else
         
         echo "$PACKAGE is not installed , skippping"
        fi

    done