#!/usr/bin/bash

# hash-bang or shebang - tells the system to use a sepcific interpreter/language

# we can use the hash character to denote a comment
# anything we do from terminal, we can do in a script

echo "Hello World!"

# Bash is an interpreted language - there is no compiling, just execution
# Partial runs are a thing - executing a script up to a line that won't work
# Commands are executed sequentially - line by line - in a bash script

#mkdir ./NewDir
#touch ./NewDir/Newfile.txt
#echo "this is some new content" >> ./NewDir/Newfile.txt

___________________________________________________________
# _***_Looping_***_
___________________________________________________________
# for loop
for (( i = 0; i < 10; i++ )); do
	echo "$i"
done


# while loop
count=0
while [[ $count -lt 3 ]]; do 
	echo "true" 
	count=$count+1
done


# range
for i in {1..5}; do
	echo "$i"
done

___________________________________________________________
# _***_Conditional_***_
___________________________________________________________

# if statements, conditionals must result in a true (1) or a false(0)

# true/false
# >  : -gt
# <  : -lt
# == : -eq / ==
# >= : -ge
# <= : -le
# != : -ne / !=
# && : &&
# || : ||
# empty string : -z STRING
# NOT empty string : -n STRING

if [[ 1 -ne 1 ]]; then
	echo "one is itself"
elif [[ 5 -eq $i ]]; then
	echo "$i is 5"
else 
	echo "I hope this doesn't run!"
fi


# Case/Switch
# the conditional value does not need to be boolean.

#case "1" in 
#	echo "case 1"
# esac

___________________________________________________________
# Reading Input
___________________________________________________________
echo "Please provide an input"
read -r res
echo "$res"

echo -n "Please enter age: "
read -r value
echo "$value"

