#!/bin/bash

#se elije el directorio
directorio="ruta archivo"
archivo_log="ruta al log"

# se usa el comando inotifywait para que se encuentre monitoreando el directorio y viendo sus cambios
inotifywait -m -r -r create,mofify,delete "$ruta" | while read path action file;
 fecha=$(date "+%Y -%m-%d %H:%M:%S")

 #imprimo el momento del cambio
 echo "[$fecha]" >> "$archivo_log"
 
 #tuve dificultades para crear el archivo de unidad de servicio, po lo que este no me permiti'o iniciar el script
