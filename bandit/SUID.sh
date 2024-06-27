# !/bin/bash
greenColour="\e[0;32m\033[1m"
yellowColour="\e[0;33m\033[1m"
endColour="\033[0m\e[0m"

#Permisos SUID

echo "\n${greenColour}ARCHIVOS VULNERABLES A SUID :${endColour} \n${yellowColour}$(find / -type f -perm 4755 -user root 2>/dev/null)${endColour}"
