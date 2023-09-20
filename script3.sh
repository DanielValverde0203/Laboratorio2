#!/bin/bash

if [$# -ne 1]; then
	exit 1
#se recibe el ejecutable como parametro
fi

ejecutable=$1

#archivo log
archivo_log="log"
valores="valores"

#se corre el binario
$ejecutable &

# obtenemos el process ID

process_ID=$!


#usamos while para que se registren periodicamente los valores de uso

while ps -p $process_ID > /dev/null; do
	fecha=$( date +%s)
	cpu=$(ps -p $process_ID -o %cpu --no-headers)
        memoria=$(ps -p $process_ID -o %mem --no-headers)
        
	#imprimimos el consumo de cpu y memoria
	echo " $fecha $cpu $memoria" >> "$valores"
	sleep 1
done



#tuve problemas para instalar gnuplot

          	
