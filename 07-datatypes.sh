#!/bin/bash


NUM01=100
NUM02=BANTI

SUM=$(($NUM01+$NUM02))

echo "sum is : $SUM "

#Array

FRUITS=("apple , banana ,pomo")

echo "furits are : ${FRUITS(@)}"