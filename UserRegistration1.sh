#!/bin/bash
read -p "Enter the First Name :" name
pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"
if [[ $name =~ $pattern ]]
then
	echo "vaild"
else
	echo "invaild"
fi
