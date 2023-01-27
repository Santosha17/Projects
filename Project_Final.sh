#!/usr/bin/bash

maximum_limit=5 #Limite máximo
minimum_limit=1 #Limite mínimo

IFS=';'
filename=$1
total=0
while read -r pergunta resposta_1 resposta_2 resposta_3 resposta_4 resposta_5; do
echo "$pergunta"
echo "1 - $resposta_1"
echo "2 - $resposta_2"
echo "3 - $resposta_3"
echo "4 - $resposta_4"
echo "5 - $resposta_5"
while [[ resposta -lt minimum_limit || resposta -gt maximum_limit ]]; do # Define o valor máximo e mínimo inserido#do
  read -r -u -p "Insira um valor de 1 a 5: " resposta 
done
total=$(( resposta + total ))
echo ""
done < "$filename"



echo "Total: $total"
if [[ $total -lt 15 ]]; then # Menos de 15 M5
     echo "Categoria: M5"
elif [[ $total -lt 25 ]]; then # Menos de 25 M4
     echo "Categoria: M4"
elif [[ $total -lt 35  ]]; then # Menos de 35 M3
     echo "Categoria: M3"
elif [[ $total -lt 45  ]]; then # Menos de 45 M2
     echo "Categoria: M2"
else
     echo "Categoria: M1" # Entre 45 e 50 M1
fi
