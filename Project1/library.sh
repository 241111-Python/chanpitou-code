#!/usr/bin/bash

function add_count() {
    VAL=$1
    SUM=$((SUM+VAL))
    COUNT=$((COUNT+1))
}

function average() {
    AVERAGE=$((SUM/COUNT))
}

function best_attemp() {
    NEW_VAL=$1
    if [[ NEW_VAL -lt BEST_ATTEMP ]]; then
        BEST_ATTEMP=$NEW_VAL
    fi
}