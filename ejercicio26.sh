#!/bin/bash

read -p "Introduzca un directorio: " dir

	if [ -d $dir ]
	then
	numDir=$(ls -D $dir 2>/dev/null | wc -l) #Mostramos el número de directorios
	echo -e "\e[1;36m-----------------------------------------------\e[0m"
	echo -e "\e[1;34mNº directorios:\e[0m" $numDir
	numFic=$(ls -l $dir 2> /dev/null | wc -l)
	echo -e "\e[1;34mNº ficheros:\e[0m" $numFic #Mostramos la cantidad de archivos
	echo -e "\e[1;31m-----------------------------------------------\e[0m" 
	else
	echo
	echo -e "\e[1;36m-----------------------------------------------\e[0m"
	echo -e "\e[1;34mEl directorio o archivo $1 no existe\e[0m"
	echo -e "\e[1;31m-----------------------------------------------\e[0m"
	fi



