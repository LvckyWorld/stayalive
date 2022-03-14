if [ -z $1 ]
then
printf "
\033[1;35m
██╗    ██╗   ██╗ ██████╗██╗  ██╗██╗   ██╗██╗    ██╗ ██████╗ ██████╗ ██╗     ██████╗ 
██║    ██║   ██║██╔════╝██║ ██╔╝╚██╗ ██╔╝██║    ██║██╔═══██╗██╔══██╗██║     ██╔══██╗
██║    ██║   ██║██║     █████╔╝  ╚████╔╝ ██║ █╗ ██║██║   ██║██████╔╝██║     ██║  ██║
██║    ╚██╗ ██╔╝██║     ██╔═██╗   ╚██╔╝  ██║███╗██║██║   ██║██╔══██╗██║     ██║  ██║
███████╗╚████╔╝ ╚██████╗██║  ██╗   ██║   ╚███╔███╔╝╚██████╔╝██║  ██║███████╗██████╔╝
╚══════╝ ╚═══╝   ╚═════╝╚═╝  ╚═╝   ╚═╝    ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝ 
                                                                                   

\033[1;33m
FEHLER! Du musst Argumente angeben!
Argumente:
 
\033[1;32m
     ARGUMENTN  \033[1;31m|\033[1;34m  FUNCTION
                \033[1;31m|\033[1;32m  
       process  \033[1;31m|\033[1;34m  starts the process\033[1;32m  
     stayalive  \033[1;31m|\033[1;34m  starts the stayalive script

\033[0m
"
else
    if [ $1 = process ]
    then
    ts-node src/index.ts
    fi
    if [ $1 = stayalive ]
    then
      if [ -z $2 ]
        then
        printf "
\033[1;31m
Du musst einen dritten Parameter übergeben
Der dritte Parameter ist der Prozessname
Muster: LvckyWorld-DC-BOT
\033[0m
        
"
        else
        screen -S $2 python3 stayalive.py $2
      fi
    fi
fi