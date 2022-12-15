#!/usr/bin/env bash

 #---------------------------------------------------------------#
 echo "Aula: 08"
 echo "Estrutura de repetição - FOR "

echo "=========For 1"

for ((i = 0; i< 10; i++ )); do
  echo $i
done

echo "====For 2 (seq) - COmando nativo do terminal"
for i in $(seq 10)
do  
  echo $i
done