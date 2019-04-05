#!/bin/bash


if [ $# -eq 0 ]
then
  echo "No has introducido ningún parámetro"
else
	if [ $1 -eq 1 ]
	  then
	  echo "El número $1 es primo"
	  else
	  declare -i divisores=1
	  declare -i num=2 
	  declare -i x=$1
	  while [ $divisores -le 2 -a $num -le $1 ]
	    do
	    declare -i y=$num
	    resto=$((x%y))
	     if [ $resto -eq 0 ]
	      then
	      divisores=$((divisores+1))
	      num=$((num+1))
	      else
	      num=$((num+1))
	     fi
	    done
	  if [ $divisores -eq 2 ]
	   then
	   echo "El número $1 es primo"
	   else
	   echo "El número $1 no es primo"
	  fi
	fi
	
fi
