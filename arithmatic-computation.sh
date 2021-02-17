#!/bin/bash

#Welcome to Arithmatic Computation

declare -A results

usecase=2
counter=0
swap=0

read -p "Enter a number: " a;
read -p "Enter a number: " b;
read -p "Enter a number: " c;

var1=$(( a+(b*c) ))
var2=$(( (a*b)+c ))
var3=$(( c+(a/b) ))
var4=$(( c+(a%b) ))

results[$((usecase++))]="$var1"
results[$((usecase++))]="$var2"
results[$((usecase++))]="$var3"
results[$((usecase++))]="$var4"

for i in ${results[@]}
do
	valAr[$((counter++))]="$i"
done

echo ${valAr[@]}

length=${#valAr[@]}
loop=1

while (( loop<=length ))
do
	for (( base=0; base<length-1; base++ ))
	do
		if (( ${valAr[base]}>${valAr[$((base+1))]} ))
		then
			(( swap=${valAr[base]} ))
			(( valAr[base]=${valAr[$((base+1))]} ))
			(( valAr[$((base+1))]=$swap ))
		fi
	done
	((loop++))
done

echo ${valAr[@]}
