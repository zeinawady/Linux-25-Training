#!/bin/bash

is_positive() {
value=$1
if [[ "$value" -gt 0 ]];then 
 return 0;
else 
 return 1;
fi
}
sum=0
while true; do
read -p "Enter a number (0 to stop): " value

if [[ "$value" -eq 0 ]]; then 
 break
elif is_positive "$value" ; then
sum=$((sum + value))
fi
done 
echo "Sum of positive numbers: $sum"

