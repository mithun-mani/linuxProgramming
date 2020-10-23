#!/bin/bash
function reverse {
  cd $1
  arr=($(ls))
  for ((i=${#arr[@]};i>=0;i--))
  do
    echo "${arr[i]}"
  done
}
function main {
  reverse $1
}
main $1
