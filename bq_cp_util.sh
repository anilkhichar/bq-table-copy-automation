#!/bin/bash

source yaml_parser.sh
function copy_table() {
    create_variables mapping.yaml
    local i=0
    for item in ${tables__source[*]}; do
        echo ${sourceProjectId}:${sourceDataset}.${tables__source[$i]} ${targetProjectId}:${targetDataset}.${tables__target[$i]}
        bq cp -n ${sourceProjectId}:${sourceDataset}.${tables__source[$i]} ${targetProjectId}:${targetDataset}.${tables__target[$i]}
        i="$((i+1))"
    done
}

# call function to copy tables
copy_table