#!/bin/bash

function f {

  local y=$1
  local z=$2
  echo $x $y $z

}
function main {
  local x=$1
  y=$2
  z=$3
  f $x $y $z
}
main 3 2 1
