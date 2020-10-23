#!/bin/bash
function traverse(){
  local path=$1
  lst=($(ls $path))
  for x in ${lst[@]}
  do
    if [ -d $path/$x ]
    then
      echo $path/$x
      traverse $path/$x
    fi
  done
}

traverse /etc
