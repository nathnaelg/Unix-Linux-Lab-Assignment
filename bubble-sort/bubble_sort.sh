#!bin/bash
echo " Enter the size of the Array "
read n
echo " Enter the elements ofthe Array "
read -a arr
echo " The orig array is: ${arr[*]} "
for ((i=0;i<n-1;i++))
do
  for  ((j=0;j<n-i-1;j++))
  do
    if [ ${arr[j]} -gt ${arr[j+1]} ]
    then
      temp=${arr[j]}
      arr[j]=${arr[j+1]}
      arr[j+1]=$temp
    fi
  done
done
echo " Sorted is: ${arr[*]}"
