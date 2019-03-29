#!/bin/bash
cat <<ENUNCIADO
Ejercicio 09 Scripts.
Script que crea un directorio y copia en el un fichero
Debes dar el nombre del directorio a crear y el nombre del fichero a copiar.
El primer parámetro será el nombre del directorio y su ruta.
El segundo parámetro sera el archivo a copiar con su ruta.
Gracias.
ENUNCIADO
echo
echo "Nombre del directorio: $1"
echo "Fichero a copiar: $2"
mkdir $1
cp $2 $1
echo
echo "Ya puedes consultar el archivo $2 en la ruta $1"
