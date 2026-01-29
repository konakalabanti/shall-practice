#!/bin/bash

NUMBER=$1
   

if [ $NUMBER -gt 20 ]; then
   echo "given number: $NUMBER  is greater then 20"
elif [ $NUMBER -eq 20 ]; then
     echo "given number: $NUMBER  is equal then 20"
fi

echo "given number: $NUMBER  is less then 20" 