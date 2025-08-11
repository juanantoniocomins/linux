#!/bin/bash

read -p "Introduce un número: " num

for ((i=0; i<=10; i++)); do
echo "$num x $i = $((num*$i))"
done

