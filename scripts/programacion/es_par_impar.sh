#/bin/bash

read -p "Introduce un número: " num

if (( num % 2 == 0 )); then
    echo "El $num es par"
else
    echo "El $num es impar"
fi
