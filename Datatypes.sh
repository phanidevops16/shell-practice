
#!/bin/bash

NUM1=100
NUM2=200

sum=$((NUM1+NUM2))

echo "sum value is $sum"

#Array 

FRUITS=("Apple","Banana","Grapes")

echo "Fruits:${FRUITS[@]}"
echo "Fruits:${FRUITS[0]}"
echo "Fruits:${FRUITS[1]}"
echo "Fruits:${FRUITS[2]}"
