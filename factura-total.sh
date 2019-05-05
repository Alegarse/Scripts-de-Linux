#!/bin/bash
echo

if [ $# -eq 0 ]
then
	echo "No has introducido ningún parámetro"
else
	if [ -e facturas.csv ]
	then
		#Sacamos el número de lineas que tiene ese cliente
		numLineas=$(grep -i $1 facturas.csv | wc -l)
		if [ $numLineas -eq 0 ]
		then
		echo "El cliente $1 no existe"
		else
		#Cabecera de la respuesta de datos
		echo -e "\e[0;37m=================================================\e[0m"
		echo -e "\e[1;34m Facturas a pagar por el cliente $1\e[0m"
		#Cuerpo de la respuesta de datos
		facturas=$(cat facturas.csv | grep $1)
		for linFac in ${facturas[@]}
		do
		((base+=$(echo "$linFac" | cut -d ";" -f3)))
		((cuota+=$(echo "$linFac" | cut -d ";" -f4)))
		done
		((total=base+cuota))
		echo -e "\e[1;32m Importe total: \e[0m $total€"
		echo -e "\e[0;37m=================================================\e[0m"
		echo
		fi
	else
	echo "El archivo facturas.csv no existe"
	fi
fi
