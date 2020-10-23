#!/bin/bash
sort()
{
    #stores the arguments as values in an arr
    for i in "$@"; do
        arr+=($i)
    done
    #iterate through the arr
    for((i=1;i<${#arr[@]};i++)); do
        # 3 4 9
        curr=$i # j = 2
        prev=$(($curr-1)) # k = 1
        while [[ $curr -gt 0 ]] && [[ ${arr[$prev]} -gt ${arr[$curr]} ]]; do
            #swap values if value at first index is greater then the value at the next index
            temp=${arr[$curr]} # temp = 3
            arr[$curr]=${arr[$prev]} # arr[1] = 4
            arr[$prev]=$temp #arr[0] = 3
            ((curr--, prev--)) # j = 1, k = 0
        done
        #echo ${arr[@]}
    done
    #To print the values
    echo "${arr[@]}"
}
sort "$@"

for i in "$@"; do
    arr+=($i)
  done
length=$#
for ((i=1;i<$length;i++))
do
  curr=$i
  prev=$(($curr-1))
  while [[ $curr -gt 0 ]] && [[ ${arr[$prev]} -gt ${arr[$curr]} ]]; do
    temp=${arr[$curr]} # set temp to the curr index
    arr[$curr]=${arr[$prev]} # set previous into the curr
    arr[$prev]=$temp
    curr=$((curr-1)) #j= -1
    prev=$((prev-1))
  done
done

echo "${arr[@]}"





#while [[ $curr -gt 0 ]] && [[ ${arr[$prev]} -gt ${arr[$curr]} ]]; do
#  echo "hi2"
#  temp=${arr[$curr]} # set temp to the curr index
#  arr[$curr]=${arr[$prev]} # set previous into the curr
#  arr[$prev]=$temp
#  curr=$((curr-1)) #j= -1
#  prev=$((prev-1))
#done
