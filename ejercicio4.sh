#!/bin/bash
PATH="./ejercicio1.sh"
if [[ -e $PATH ]]
then
    echo "La ruta: $PATH existe!"
    if [[ -x $PATH ]]
    then
        echo "Tengo permisos de ejecución sobre la ruta: $PATH"
    fi
else
    echo "La ruta: $PATH no existe"
fi

#$1 es el 2do param que me pasan cuando llaman al script
if [[ -d $1 ]]; then #Llama a "test" con el param que chequea si es directorio. respectar los espacios después y antes de los paréntesis rectos
    echo "La ruta: $ruta existe!"
    permiso=$(ls -ld $ruta)
    permiso=${permiso:3:1}
    if [[ $permiso == "x" ]]; then
        echo "Tengo permisos de ejecución sobre la ruta: $1"
    fi
else
    echo "La ruta: $1 no existe!"
fi