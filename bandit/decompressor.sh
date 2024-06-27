#!/bin/bash

#Fucnion CONTRL C

function ctrl_c(){
  echo -e "\n\n[!] Saliendo..\n"
  exit 1
}

trap ctrl_c INT


first_file="data.gz"

decoded_file="$(7z l data.gz | tail -n 3 | awk 'NF{print $NF}' | head -n 1)"

echo "El primer archivo es: $first_file"

echo "El archivo a descomprimir es: $decoded_file"

7z x $first_file &>/dev/null

while [ $decoded_file ];do
  echo -e "\n [+] El nuevo archivo es: $decoded_file"
  7z x $decoded_file &>/dev/null
  decoded_file="$(7z l $decoded_file 2>/dev/null | tail -n 3 |head -n 1| awk 'NF{print $NF}')"
done
