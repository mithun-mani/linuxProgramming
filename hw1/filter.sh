#!/bin/bash
function average {
  arr=( $(ls -l) )
  sum=0
  counter=0
  for ((i=6;i<${#arr[@]};i+=9))
  do
    ((sum+=i))
    ((counter+=1))
  done
  avg=$((sum/counter))
  echo "$avg"
}
function filter {
  average
  for ((i=6;i<${#arr[@]};i+=9))
  do
    if [ "$i" -gt "$avg" ]
    then
      nameIndex=$((i+4))
      echo "${arr[$nameIndex]}"
    fi
  done
}
function main {
  cd $1
  echo "$1"
  filter
}
main $1
