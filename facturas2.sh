#!/bin/bash


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
		echo "Los números de facturas del cliente $1 son:"
		cat facturas.csv|grep -i $1|cut -d ";" -f2
		fi
	else
	echo "El archivo facturas.csv no existe"
	fi
fi
