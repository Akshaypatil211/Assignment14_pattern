#!/bin/bash -x
read -p "Enter the First Name :" F_name
read -p "Enter the Last name :" L_name
read -p "Enter the email id :" email
read -p "Enter the mobile num :" mobi_num
read -p "Enter the password :" password

e_pattern="^[a-z]+[0-9]*([-_+.][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([,]{1})*([.][a-z]{2})*$"
pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"
m_pattern="^[0-9]{2}[[:space:]][0-9]{10}$"
pass_pattern="^[0-9A-Za-z]{8,}"

special_char=$(($(tr -d '[[:alnum:]]' <<< $password | wc -m)-1))
echo $special_char

if [[ $F_name =~ $pattern && $L_name =~ $pattern &&  $email =~ $e_pattern ]]
then
        echo "name vaild"
else
        echo "name invaild"
fi

if [[ $mobi_num =~ $m_pattern ]]
then
        echo "mobile number vaild"
else
        echo "mobile number invaild"
fi
if [[ $password =~ $pass_pattern && $password =~ [[:upper:]] && $password =~ [[:lower:]]  && $special_char == 1 ]]
then
        echo "passwd vaild"
else
        echo "passwd invaild"
fi
