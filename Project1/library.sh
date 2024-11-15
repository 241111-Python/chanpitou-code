#!/usr/bin/bash

# find the sum, and count # of plays recorded
function add_count() {
    VAL=$1
    SUM=$((SUM+VAL))
    COUNT=$((COUNT+1))
}

# find the average score
function average() {
    AVERAGE=$((SUM/COUNT))
}

# find the best attemp in a level
function best_attemp() {
    NEW_VAL=$1
    if [[ NEW_VAL -lt BEST_ATTEMP ]]; then
        BEST_ATTEMP=$NEW_VAL
    fi
}