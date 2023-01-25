#!/usr/bin/bash

echo "A. Há quanto tempo jogas Padel?"
echo "1 - Menos de 3 meses"
echo "2 - 3 a 6 meses"
echo "3 - 6 meses a 1 ano"
echo "4 - 1 anos a 3 anos"
echo "5 - Mais de 3 anos"
read -r pergunta_a
echo "B. Como avalias o teu serviço?" 
echo "1 - Péssimo"
echo "2 - Mau"
echo "3 - Bom"
echo "4 - Muito Bom"
echo "5 - Excelente"
read -r pergunta_b
echo "C. Como avalias a tua resposta ao serviço?" 
echo "1 - Custa me devolver o serviço, principalmente os serviços rápidos e ao vidro"
echo "2 - Respondo a bolas lentas e simples mas os serviços mais potentes tenho dificuldade"
echo "3 - Respondo com segurança aos serviços não muito complicados"
echo "4 - Respondo com muita segurança aos serviços com alguma potência"
echo "5 - Tenho uma resposta fiável e com direção"
read -r pergunta_c
echo "D. Como avalias o teu volley?" 
echo "1 - Péssimo"
echo "2 - Mau"
echo "3 - Bom"
echo "4 - Muito Bom"
echo "5 - Excelente"
read -r pergunta_d
echo "E. Como avalias os teus ressaltos?" 
echo "1 - Péssimo"
echo "2 - Mau"
echo "3 - Bom"
echo "4 - Muito Bom"
echo "5 - Excelente"
read -r pergunta_e
echo "F. Como avalias o teu lob?" 
echo "1 - Péssimo"
echo "2 - Mau"
echo "3 - Bom"
echo "4 - Muito Bom"
echo "5 - Excelente"
read -r pergunta_f
echo "G. Como avalias a tua pancada de esquerda?"
echo "1 - Tento não dar a pancada de esquerda, procurando sempre dar de direita"
echo "2 - Realizo a pancada apesar de não fazer bem o movimento nem colocar"
echo "3 - Mantenho as trocas de bola, com limitações na potência e colocação"
echo "4 - Respondo com segurança, coloco onde quero e devolvo bolas difíceis planas e cortadas"
echo "5 - Tenho muita segurança, cometo poucos erros e respondo com grande potência"
read -r pergunta_g
echo "H. Como avalias a tua pancada de direita?"
echo "1 - Tento devolver a bola, dando a pancada por baixo da bola"
echo "2 - Não respondo com potência"
echo "3 - Tenho segurança mas procuro colocação e com alguma potência"
echo "4 - Consigo manter trocas de bolas longas, pancada com potência e colocada"
echo "5 - Consigo colocar a bola onde quero, assim como bolas difíceis com pancadas planas e cortadas"
read -r pergunta_h
total=$(( pergunta_a + pergunta_b + pergunta_c + pergunta_d + pergunta_e + pergunta_f + pergunta_g + pergunta_h ))
echo "$total"
if [[ $total -lt 10 ]]; then
     echo "M5"
elif [[ $total -lt 18 ]]; then
     echo "M4"
elif [[ $total -lt 26  ]]; then
     echo "M3"
elif [[ $total -lt 35  ]]; then
     echo "M2"
else
     echo "M1"
fi