#!/usr/bin/bash

FILE="./../../trainer-code/SourceData/samplearrays.csv"

### Reading the first line of the data file, and printing it to terminal
echo "Read the first line of the data file: "
read -r csv_data < "$FILE" 
echo "$csv_data"


### Read the first line of the data file, and seperate the individual values into entries of an array
echo "Reading the first line as an array: "
IFS=, read -ra csv_array < "$FILE"
for value in "${csv_data[@]}"
do
	echo "$value"
done

echo "Reading the first line as an array: "
IFS=, read -ra csv_array <<< "$csv_data"
for value in "${csv_data[@]}"; do
	echo "$value"
done



# Build a function to add the elements of the array
function sum() {
# lets assume that this sum function will be passed an array of values to add up
	
	local array=("$@")	
	local SUM=0
	
	for value in "${array[@]}"
	do
		SUM=$((SUM+value))
	done

	echo "$SUM"
}


ARRAY_SUM=$(sum "${csv_array[@]}")
echo "$ARRAY_SUM"


# Read a function from a different file 
