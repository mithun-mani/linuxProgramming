#!/bin/bash
for i in "$@"
do
  arr+=($i)
done
for ((i=1;i<$#;i++))
do
  temp=${arr[$i]}
  prev=$(($i-1))
  while [[ $prev -ge 0 ]] && [[ ${arr[$prev]} -gt $temp ]]
  do
    arr[$((prev+1))]=${arr[$prev]}
    prev=$((prev-1))
  done
  arr[$((prev+1))]=$temp
done
echo "${arr[@]}"
