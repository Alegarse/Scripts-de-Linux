#!/bin/bash
echo
cat <<ENUNCIADO
Ejercicio 13 Scripts.
Script que crea un directorio y copia en el un fichero
Debes dar el nombre del directorio a crear y el nombre del fichero a copiar.
El primer parámetro será el nombre del directorio y su ruta.
El segundo parámetro sera el archivo a copiar con su ruta.
Gracias.
ENUNCIADO
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
