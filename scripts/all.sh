#!/bin/bash

# Discussing more about conditions if/for/while/case

# first will discuss about case

# case statement




# Before we start first c how to write functions
# lets say , In every case U want to enter a msg
# calling function


        Error_call () {
 		echo "Enter the hostname Correct"
}

	 Welcome_call () {
		echo "&&&&&&&&&&&&&&&"
		echo "!!!!!!!!!!!!!!!!!!!!!!"
               echo "Hello Happy scripting"
}

	SshLogin_Fun () {
		echo \"echo Enter the hostnae\"
		read HOST
		command=$1
if [ "$HOST" == "" ]	
then	
    Error_call
else
	ssh -t $HOST "$command"
fi
}

while [ "$CHOICE" != "Q" ] && [ "$CHOICE" != "q" ]
do
echo "enter your choice"
echo "1) learn if/elif  condition"
echo "2) learn while condition"
echo "3) learn for loop"
echo "4) calling function"
echo "5) Declaring a variable"
echo "q/Q) Exit"
echo "6) Functions"
read CHOICE				# here loading choice into variable called CHOICE

# starting case statement



case $CHOICE in
1)

# If condition

# calling a function
	Welcome_call
# will work on basic commands ex.lets take prime num

echo "enter a num which is prime number"
echo "enter a num"
read NUM   # storing num into variable called NUM
d=`expr $NUM % 2`  # here storing the ans in d
if [ "$NUM"  == "1" ]
then
	echo "$NUM  is a prime num"


# d=`expr $NUM % 2`  # here storing the ans in d (so here i commented this line coz i wanted this line before starting the loop)

elif [ "$d" == "0" ]  # so here  camparing Quotient
then
	echo "since $NUM is devidable by 2"
	echo "The number you have entered is PRIME NUMBER"

else
	echo "!!!!!!!!!!!!!!!!!!11"
	echo " Idiot You dont know which are prime numbers"

fi
;;
2)
# Lets call our welcomr fun here

clear # first clear the screen
 Welcome_call

# while condition
echo "so here we used while conditon in begining of the script"
echo "To print our Menu untill we want to exit"
;;
6)

# lets c how functions works

# small exapmle to c how to login into host using while function

clear
Welcome_call


SshLogin_Fun "echo \"Hostname\"
	hostname
	echo \"Current users on the host\"
	w
	echo \"previous users on the host\"
	last -10
	echo \"logs\"
	tail -20 /var/log/messages
	echo \"Free memory\"
	free -m"
;;

3)

# Lets assume you want to try multiple commands at a time in one "command"
echo "enter the hostname"
read hostname
for i in {w,hostname,uptime}; do ssh -t $hostname "$i";done
;;
esac
done
