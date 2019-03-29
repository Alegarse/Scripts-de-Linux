#!/bin/bash
cat << ENUNCIADO
Ejercicio 04 Scripts.
Crea un script el cual despliegue en pantalla todos los valores de los
parámetros enviados, separados por un guion.
ENUNCIADO
IFS='-'
echo "Los parámetros introducidos separados por un guión son: "
echo "$*"
