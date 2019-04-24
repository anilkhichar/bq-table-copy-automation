#!/bin/bash

source yaml_parser.sh
function copy_table() {
    create_variables mapping.yaml
    local i=0
    for item in ${tables__source[*]}; do
        echo ${sourceProjectId}:${sourceDatasetId}.${tables__source[$i]} ${targetProjectId}:${targetDatasetId}.${tables__target[$i]}
        bq cp -n ${sourceProjectId}:${sourceDatasetId}.${tables__source[$i]} ${targetProjectId}:${targetDatasetId}.${tables__target[$i]}
        i="$((i+1))"
    done
}

# call function to copy tables
copy_table