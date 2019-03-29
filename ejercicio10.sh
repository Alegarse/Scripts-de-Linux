#!/bin/bash
cat <<ENUNCIADO
Ejercicio 10 Scripts.
Crea un script que realice las siguientes tareas:
A. Si el script no ha recibido ningún parámetro, que muestre el
mensaje “No has introducido ningún parámetro” y termine el
script.
B. Si ha recibido algún parámetro:
-Que diga cuantos parámetros ha recibido.
-Que muestre los parámetros recibidos.
ENUNCIADO
echo ""
if [ $# -eq 0 ]
then
echo "No has introducido ningún parámetro"
else
echo "El número de parametros recibidos es: $#"
echo
echo "Los parámetros  recibidos son: $@"
fi
