#!/bin/bash

# Función para contar archivos en el directorio actual
function contar_archivos() {
  # `ls -l | wc -l` lista los archivos y cuenta las líneas (archivos)
  # pero también cuenta la línea de "total" de `ls -l`. 
  # Restamos 1 para obtener el número correcto de archivos.
  numero_archivos=$(ls -l | wc -l) 
  echo $(($numero_archivos - 1)) 
}

# Llamada a la función y almacenamiento del resultado en una variable
cantidad=$(contar_archivos)

# Mostrar el resultado
echo "Hay $cantidad archivos en este directorio." 