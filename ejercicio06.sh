#!/bin/bash
cat << ENUNCIADO
Ejercicio 06 Scripts.
¿Qué pasaría si un Script recibe 9 parámetros y se intenta imprimir el
parámetro 10?
ENUNCIADO
echo "Los 10 parametros recibidos son:"
echo "$10"
echo "Para que salga el parámetro 10:"
echo "${10}"
