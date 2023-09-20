#!/bin/bash
#vemos que los argumentos se proporcionen de manera correcta
if [$# -ne 2]; then
	exit 1
fi
#almacenamos en una cariable
nombre_del_proceso=$1
comando_para_ejecutar=$2

while true; do
#usamos el comando pgrep para devoler el id de proceso que coincide
 pgrep $nombre_del_proceso
 echo" $nombre_de_proceso

 # se ejecuta el comando 
 $comando_para_ejecutar & 

done 



