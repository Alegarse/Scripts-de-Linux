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
		fi
		imp1=$(source cuotas-iva.sh | grep cuota)
		imp2=$(source base-total.sh | grep base)
		((suma=imp1+imp2))
		echo -e "\e[1;32m Importe: \e[0m $suma€"
		echo -e "\e[0;37m=================================================\e[0m"
		echo

	else
	echo "El archivo facturas.csv no existe"
	fi
fi
