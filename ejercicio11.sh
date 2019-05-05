#!/bin/bash

echo ""
if [ $# -eq 0 ]
then
echo "No has introducido ningún parámetro"
exit 1
else
echo "El número de parametros recibidos es: $#"
echo
echo "Los parámetros  recibidos son: $@"
exit 0
fi
