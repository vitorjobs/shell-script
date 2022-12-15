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

#---------------------------------------------------------------#
echo "Aula: 09"
echo "Estrutura de repetição - FOR - WHILE "

echo "==== For 3 (ARRAY)"

Frutas=(
  'laranja'
  'Ameixa'
  'abacaxi'
  'melancia'
  'maca'
  'bananas'
)
for i in ${Frutas[@]}; do
  echo $i
done
# Obs: o valor de "@" dentro do array siginida "Todos os indices do array"

#---------------------------------------------------------------#
# Obs: o "lt" dentro do array siginida "Menor QUE"
# Obs: o "#Frutas" siginifica a referência do Array

echo "==== While"
contador=0
while [[ $contador -lt ${#Frutas[@]} ]]; do
  echo $contador
  contador=$(($contador+1))
done




