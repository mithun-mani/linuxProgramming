#!/bin/bash
function breadthFirst {
  open=($3)
  d=$1
  b=$2
  for ((i=0; i<$d; i++))
  do
    tmp_open=()
    for x in ${open[@]}
    do
      tmp=()
      for ((j=0;j<$b;j++))
      do
        mkdir $x/$j
        tmp=(${tmp[@]} $x/$j)
      done
      tmp_open=(${tmp_open[@]} ${tmp[@]})
    done
    open=(${tmp_open[@]})
  done
}
function depthFirst {
  if [[ $1 != $d ]]
  then
      mkdir $3
  fi
  if [[ $1 -lt 1 ]]
  then
      return
  fi
  local i
  for (( i=0; i<$2; i++ ))
  do
      depthFirst $(($1-1)) $2 $3/$i
  done
}
function main {
  if [ "$4" = "breadth" ]
  then
    breadthFirst $1 $2 $3
  elif [ "$4" = "depth" ]
  then
    depthFirst $1 $2 $3
  fi
}
main $1 $2 $3 $4
