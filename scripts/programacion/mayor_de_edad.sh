#!/bin/bash

read -p "Introduce tu edad: " edad

if [[ $edad -ge 18 ]]; then
echo "Eres mayor de edad"
else
echo "No eres mayor de edad"
fi

