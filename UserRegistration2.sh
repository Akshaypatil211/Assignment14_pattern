#!/bin/bash
read -p "Enter the First Name :" F_name
read -p "Enter the Last name :" L_name
pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"
if [[ $F_name =~ $pattern && $L_name =~ $pattern ]]
then
	echo "vaild"
else
	echo "invaild"
fi
