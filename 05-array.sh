#! /bin/bash

# Index start with 0, the size is 4
FRUITS=("APPLE" "KIWI" "MANGO" "ORANGE") #ARRAY

echo "First fruit is: ${FRUITS[0]}" 
echo "Second fruit is: ${FRUITS[1]}"
echo "Third fruit is: ${FRUITS[2]}"
echo "forth fruit is: ${FRUITS[3]}"

echo "fruit is: ${FRUITS[@]}"
