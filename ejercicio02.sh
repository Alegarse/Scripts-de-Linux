#!/bin/bash
cat << ENUNCIADO
Ejercicio 02 Scripts.
Crear un script que muestre por pantalla los parámetros introducidos
como una sola cadena.
ENUNCIADO

echo "Los parámetros introducidos son: "
echo "$@"
