#!/bin/bash


NUM01=100
NUM02=BANTI

SUM=$(($NUM01+$NUM02))

echo "sum is : $SUM "

#Array

FRUITS=("apple , banana ,pomo")

echo "furits are : ${FRUITS[@]}"
echo "furits are : ${FRUITS[0]}"
echo "furits are : ${FRUITS[1]}"
echo "furits are : ${FRUITS[2]}"