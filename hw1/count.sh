#!/bin/bash
cd /bin
arr=($(ls))
for i in {a..z}
do
  count=0
  for j in ${arr[@]}
  do
  	if [ "$i" = "${j:0:1}" ]
  	then
  	  ((count++))
    fi
  done
  echo "$i: $count"
done
