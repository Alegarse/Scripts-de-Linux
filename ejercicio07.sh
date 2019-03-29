#!/bin/bash
cat << ENUNCIADO
Ejercicio 07 Scripts.
Crea un script que cree un directorio a partir del primer parámetro
recibido. El primer parámetro recibido debería ser, por lo tanto, la ruta
correcta del directorio que queremos crear (de forma relativa o
absoluta) incluyendo su nombre.
ENUNCIADO
echo "Script que crea un directorio con el nombre que introduzcas"
mkdir "$1"
echo "El nombre elegido es: $1"
