#!/bin/bash

echo
echo "Nombre del directorio: $1"
echo "Fichero a copiar: $2"
mkdir $1
cp $2 $1
echo
echo "Ya puedes consultar el archivo $2 en la ruta $1"
