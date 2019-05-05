#!/bin/bash

read -p "Introduzca un número entero para calcular su factorial: " num

declare -i resultado=0
declare -i operacion=$num
declare -i numini=$num

while [ $num -gt 1 ]
do
let "resultado=operacion*($num-1)"
operacion=$resultado
let "num--"
done

echo "El factorial del $numini es: $resultado"

