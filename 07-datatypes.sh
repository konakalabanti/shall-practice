#!/bin/bash


NUM01=100
NUM02=BANTI

SUM=$(($NUM01+$NUM02))

echo "sum is : $SUM "

#Array

FRUITS=("apple" "banana" "pomo")

echo "Fruits are: ${FRUITS[@]}"
echo "First Fruit is: ${FRUITS[0]}"
echo "Second Fruit is: ${FRUITS[1]}"
echo "Third Fruit is: ${FRUITS[2]}"