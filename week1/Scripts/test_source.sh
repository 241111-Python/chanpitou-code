function printArray() {
    echo "$@"
    echo "number of parameters: $#"
}

function sumArray() {
    SUM=0
    for val in $@; do
        SUM=$(($SUM+$val))
    done
    echo "The sum of the array: $SUM"
}

"$@"