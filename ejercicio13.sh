#!/bin/bash
echo

if [ $# -eq 2 ]
then
echo "Nombre del directorio: $1"
echo "Fichero a copiar: $2"
mkdir $1
cp $2 $1
echo
echo "Ya puedes consultar el archivo $2 en la ruta $1"
else
cat << TEXTO
Error, debes pasar dos parámetros que son el nombre del directorio y
el nombre del archivo a copiar respectivamente.
La forma correcta sería: bash ejercicio13.sh [fichero] [directorio]
TEXTO
fi
