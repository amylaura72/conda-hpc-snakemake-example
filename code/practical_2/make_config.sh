#!/bin/bash

mkdir -p ../../data/derived
mkdir -p ../../results

cd ..
Rscript 0_get_conditions.R
cd practical_2

echo "CONDITIONS:" > ../config.yml
{       read
        while IFS=, read -r line;
        do
                printf "  - ${line}\n">>../config.yml

        done

} < ../../data/derived/top_conditions.csv

