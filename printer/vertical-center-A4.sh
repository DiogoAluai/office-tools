#!/bin/bash


input=$(cat)

lines=$(echo "$input" | wc -l)

leading_line_padding_count=$(( (58 - $lines) / 2 )) # 58 is A4 row number



for i in $(seq 1 $leading_line_padding_count); do
    echo ""
done


echo "$input"
