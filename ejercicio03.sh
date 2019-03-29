#!/bin/bash
cat << ENUNCIADO
Ejercicio 03 Scripts.
Crea un script el cual despliegue en pantalla todos los valores de los
parámetros enviados, separados por el valor de IFS.
ENUNCIADO
IFS='/'
echo "Separador IFS a usar: $IFS"
echo "Los valores separadospor el IFS son:"
echo "$*"

