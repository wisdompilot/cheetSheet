#!/bin/bash
# basic structure of bash for nested-loop

#for i in {1..10..2} #bash 4.0+
for i in $(seq 1 2 10)
do
    for j in 2 3 5 7 11 13
    #for j in {2,3,5,7,11,13} # NO whitespace follows commas
    do
	echo $i $j
    done
done

echo

array=(2 3 5 7 11 13) # bash array
# a C-like for-loop
for ((i = 1; i <= 10; i += 2))
do
    for ((j = 0; j < ${#array[@]}; j++)) # array length
    do
	echo $i ${array[j]} # resolve variable
    done
done

# array reference
for v in ${array[@]}
do
    echo $v
done

index=0
while [ "$index" -lt 10 ]
do
    echo $index
    ((index++))
done
