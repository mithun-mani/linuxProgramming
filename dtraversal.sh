function depthFirst(){
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
depthFirst $1 $2 $3
