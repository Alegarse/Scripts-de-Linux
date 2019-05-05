#!/bin/bash

echo ""
if [ $# -eq 0 ]
then
echo "No has introducido ningún parámetro"
else
echo "El número de parametros recibidos es: $#"
echo
echo "Los parámetros  recibidos son: $@"
fi
