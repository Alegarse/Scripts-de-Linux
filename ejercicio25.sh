#!/bin/bash

read -p "Introduzca un número entero para obtener sus divisores: " num

declare -i numini=$num
divisores=(1 2 3 4 5 6 7 8 9)
declare -i indice=0
declare -i indice2=0
declare -a divi
declare -i final=0

while [ $final -ne 1 ]
	    do
	    if [ $indice -eq 8 ]
	    then
	    final=1
	    else
			resto=$(($num%divisores[$indice]))
			if [ $resto -eq 0 ]
			then
				divi[$indice2]=${divisores[$indice]}
				let "indice2++"
				let "indice++"
			else
			let "indice++"
			fi
		fi
	    done

echo "Los divisores del número $num son: "
for e in ${divi[*]}
do
echo "$e"
done

