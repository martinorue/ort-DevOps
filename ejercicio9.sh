#!/bin/bash

function contar_archivos() {
    PATH=$1
    if [[ -d $PATH ]]; then
        numero_archivos=$(ls -l $PATH | wc -l) 
        echo $(($numero_archivos - 1))
    else
        echo "El directorio $PATH no existe"
    fi 
}

cantidad=$(contar_archivos)

echo "Hay $cantidad archivos en este directorio." 

cantidad_etc=$(contar_archivos "/etc")
cantidad_var=$(contar_archivos "/var")
cantidad_usrbin=$(contar_archivos "/usr/bin")

# Mostrar los resultados
echo "Número de archivos en /etc: $cantidad_etc"
echo "Número de archivos en /var: $cantidad_var"
echo "Número de archivos en /usr/bin: $cantidad_usrbin"