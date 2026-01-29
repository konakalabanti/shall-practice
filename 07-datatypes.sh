#!/bin/bash


NUM01=100
NUM02=BANTI

SUM=$(($NUM01+$NUM02))

echo "sum is : $SUM "

#Array

FRUITS=("apple , banana ,pomo")

echo " fruits are : ${FRUITS[@]}"
echo " first fruit is : ${FRUITS[0]}"
echo " second fruit is : ${FRUITS[1]}"
echo " third fruit is : ${FRUITS[2]}"