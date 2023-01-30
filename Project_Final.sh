#!/usr/bin/bash

maximum_limit=5 #Limite máximo
minimum_limit=1 #Limite mínimo

filename=$1
total=0
IFS=$'\n' #Parte a leitura por linhas
for pergunta in $(cat $filename); do # Lê linha a linha a partir do ficheiro .csv
     IFS=';' 
     n=0
     for col in $pergunta; do
          if [[ $n -lt 1 ]]; then 
               echo "$col"
          else
               echo "$n - $col"  
          fi
          n=$(( 1 + n ))
     done
     while : ; do
          read -r -p "Insira um valor de 1 a 5: " resposta
           [[ resposta -lt minimum_limit || resposta -gt maximum_limit ]] || break # Define o valor máximo inserido
     done
     total=$(( total + resposta ))
done

echo "Total: $total"

if [[ $2 = "padel" ]]; then #Padel no fim do comando
     if [[ $total -lt 15 ]]; then # Menos de 15 M5
          echo "Categoria: M5"
     elif [[ $total -lt 25 ]]; then # Menos de 25 M4
          echo "Categoria: M4"
     elif [[ $total -lt 35  ]]; then # Menos de 35 M3
          echo "Categoria: M3"
     elif [[ $total -lt 45  ]]; then # Menos de 45 M2
          echo "Categoria: M2"
          else
          echo "Categoria: M1" # Entre 45 e 50 M1
     fi   
fi

# Este if faz com que se não tiver padel no fim do comando ex:"bash Project_Final.sh perguntas.csv", ele faz só a soma e não inclui o ranking de padel
# Se tiver padel no fim ex:"bash Project_Final.sh perguntas.csv padel", no fim diz a categoria de acordo com o total