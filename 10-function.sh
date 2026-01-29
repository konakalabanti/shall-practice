#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "please run the script with user user"

   exit 1 #install chese vadu root user kakapothe exit avvu ani 
fi

###by default shall will not excute ##
VALIDATE () {  #thi is function name
  if [ $1 -ne 0 ]; then
      echo "$2 ... FAILURE"  #this is reapted code 
      exit 1
  else
      echo "$2 ... SUCCESS"
  fi
  
}

echo "Installing Nginx" #for printing

VALIDATE $? "nginx installation"  #for validation

dnf install mysql -y  #command 

VALIDATE $? "my sql intallation "

dnf install nodejs -y  #command 

VALIDATE $? "mynodejs installation"


