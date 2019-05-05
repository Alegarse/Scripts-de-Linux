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
		echo "El cliente $1 no tiene ninguna factura"
		else
		#Cabecera de la respuesta de datos
		echo -e "\e[0;37m=======================================================\e[0m"
		echo -e "\e[1;34mLos datos de la/s factura/s del cliente $1 son:\e[0m"
		echo -e "\e[0;37m=======================================================\e[0m"
		echo -e "\e[1;32mNom.Cli  Num.Fact  Base Imp  Cuota IVA  Total\e[0m"
		echo -e "\e[0;37m--------------------------------------------------\e[0m"
		
		#Cuerpo de la respuesta de datos
		facturas=$(cat facturas.csv | grep $1)
		for linFac in ${facturas[@]}
		do
		num=$(echo "$linFac" | cut -d ";" -f2)
		base=$(echo "$linFac" | cut -d ";" -f3)
		cuota=$(echo "$linFac" | cut -d ";" -f4)
		total=$((base+cuota))
		echo "$1       $num         $base       $cuota       $total"
		done
		fi
	else
	echo "El archivo facturas.csv no existe"
	fi
fi
