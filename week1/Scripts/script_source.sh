#!/usr/bin/bash

hello_world() {
    echo "hello world"
}

function main() {
    echo "From main(): $@"
    echo "From main count of parameters: $#"
}

main $2
main $3
main $4
echo "From the script file: $1"
echo "From the script file: $@"
main $@

# this would take an array of arguments from script files/terminal
