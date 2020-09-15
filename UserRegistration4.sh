#!/bin/bash -x
read -p "Enter the First Name :" F_name
read -p "Enter the Last name :" L_name
read -p "Enter the email id :" email
read -p "Enter the mobile num :" mobi_num


e_pattern="^[a-z]+[0-9]*([-_+.][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([,]{1})*([.][a-z]{2})*$"
pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"
m_pattern="^[0-9]{2}[[:space:]][0-9]{10}$"
if [[ $F_name =~ $pattern && $L_name =~ $pattern &&  $email =~ $e_pattern ]]
then
        echo "vaild"
else
        echo "invaild"
fi

if [[ $mobi_num =~ $m_pattern ]]
then
        echo "vaild"
else
        echo "invaild"
fi
