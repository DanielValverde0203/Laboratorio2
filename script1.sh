#!/bim/bash

#vemos que se  proporciona el argumento de manera correcta
if [ $# -ne 1]; then
	exit 1
fi
# almacenamos el ID que dio el argumento
id_del_proceso="$1"

echo "id del proceso: $id_del_proceso"

ps -aux | grep $id_del_proceso | grep  pid,tid,class,rtprio,ni,pri,psr,pcpu,stat,wchan:14,comm

#En esta ultima parte se utilizo ps para ver todos los procesos seguido de grep para limitar cuales es que se quieren ver
