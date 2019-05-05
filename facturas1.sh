#!/bin/bash


if [ $# -eq 0 ]
then
	echo "No has introducido ningún parámetro"
	exit 1
else
	if [ -e ./facturas.csv ]
	then
	#sacamos las lineas en las que figura el cliente y las contamos
	numLineas=$(grep -i $1 facturas.csv | wc -l)
		if [ $numLineas -eq 0 ]
		then
		echo "El cliente $1 no tiene ninguna factura"
		else
		echo "El cliente $1 tiene $numLineas factura/s."
		fi
	else
	echo "El archivo facturas.csv no existe"
	fi
fi
