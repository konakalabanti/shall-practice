#!/bin/bash


START_TIME=$(date +%s) #timestamp is variable , date ane command ni dynamnic excute chesi  aa output ni e timestamp lo store chesthundhi 

echo "script is excuted at: $START_TIME" #for printing

sleep 10 

END_TIME=$(date +%s)
TOTEL_TIME=$(($END_TIME-$START_TIME))

echo "script excuted at : $TOTEL_TIME"