#!/bin/bash

STARTTIME=$(date + %s)

echo "time excution at: $STARTTIME"

sleep 10

ENDTIME=$(date + %s)

TOTAL_TIME=$(($STARTTIME-$ENDTIME))

echo "script excution in : $TOTAL_TIME"
