#!/usr/bin/bash

maximum_limit=5 #Limite máximo
minimum_limit=1 #Limite mínimo

echo "A. Há quanto tempo jogas Padel?"
echo "1 - Menos de 3 meses"
echo "2 - 3 a 6 meses"
echo "3 - 6 meses a 1 ano"
echo "4 - 1 anos a 3 anos"
echo "5 - Mais de 3 anos"
while [[ pergunta_a -lt minimum_limit || pergunta_a -gt maximum_limit ]] # Define o valor máximo e mínimo inserido
do 
  read -r -p "Insira um valor de 1 a 5: " pergunta_a  
done
echo ""
echo "B. Já teve aulas de padel?"  
echo "1 - Péssimo"
echo "2 - Mau"
echo "3 - Bom"
echo "4 - Muito Bom"
echo "5 - Excelente"
while [[ pergunta_b -lt minimum_limit || pergunta_b -gt maximum_limit ]] # Define o valor máximo e mínimo inserido
do
  read -r -p "Insira um valor de 1 a 5: " pergunta_b  
done
echo ""
echo "C. Como é a tua forma física?" 
echo "1 - Baixa"
echo "2 - Média"
echo "3 - Normal"
echo "4 - Alta"
echo "5 - Muito alta"
while [[ pergunta_c -lt minimum_limit || pergunta_c -gt maximum_limit ]] # Define o valor máximo e mínimo inserido
do
  read -r -p "Insira um valor de 1 a 5: " pergunta_c  
done
echo ""
echo "D. Como avalias o teu serviço?" 
echo "1 - Nunca tive"
echo "2 - Tive menos de 10 aulas"
echo "3 - Entre 10 a 20"
echo "4 - Entre 20 a 40"
echo "5 - Mais de 40 e treino periodicamente"
while [[ pergunta_d -lt minimum_limit || pergunta_d -gt maximum_limit ]] # Define o valor máximo e mínimo inserido
do
  read -r -p "Insira um valor de 1 a 5: " pergunta_d 
done
echo ""
echo "E. Como avalias a tua resposta ao serviço?" 
echo "1 - Custa me devolver o serviço, principalmente os serviços rápidos e ao vidro"
echo "2 - Respondo a bolas lentas e simples mas os serviços mais potentes tenho dificuldade"
echo "3 - Respondo com segurança aos serviços não muito complicados"
echo "4 - Respondo com muita segurança aos serviços com alguma potência"
echo "5 - Tenho uma resposta fiável e com direção"
while [[ pergunta_e -lt minimum_limit || pergunta_e -gt maximum_limit ]] # Define o valor máximo e mínimo inserido
do
  read -r -p "Insira um valor de 1 a 5: " pergunta_e 
done
echo ""
echo "F. Como avalias o teu volley?" 
echo "1 - Quase não subo á rede e não me posiciono bem"
echo "2 - Sem segurança na rede, cometo muitos erros na rede"
echo "3 - Consigo fazer volley's na rede de direita e esquerda com pouca potência"
echo "4 - Posiciono-me bem, consigo colocar bolas baixas e profundas, procurando o erro do advérsario"
echo "5 - Bom posicionamento de pés, pancadas difíceis com potência e profundidade bem colocadas"
while [[ pergunta_f -lt minimum_limit || pergunta_f -gt maximum_limit ]] # Define o valor máximo e mínimo inserido
do
  read -r -p "Insira um valor de 1 a 5: " pergunta_f
done
echo ""
echo "G. Como avalias os teus ressaltos?" 
echo "1 - Não sei ler os ressaltos, tento bater antes de ressaltar"
echo "2 - Tento jogar as bolas que vão ao vidro apesar de não saber posicionar-me"
echo "3 - Controlo os ressaltos a velocidade amena e consigo responder a alguns potentes"
echo "4 - Tenho segurança com os ressaltos rápidos e saídas de parede"
echo "5 - Boa saida de vidro, com intensidade e potência, ganhando assim pontos"
while [[ pergunta_g -lt minimum_limit || pergunta_g -gt maximum_limit ]] # Define o valor máximo e mínimo inserido
do
  read -r -p "Insira um valor de 1 a 5: " pergunta_g
done
echo ""
echo "H. Como avalias o teu lob?" 
echo "1 - Não faço lobs"
echo "2 - Tento fazer lobs, sem direção, simplesmente mando só a bola"
echo "3 - Tenho algum controlo, tentando colocar lobs compridos/fundos"
echo "4 - Tenho segurança e cometo poucos erros"
echo "5 - Faço lobs com colocação e com a altura necessária para subir á rede"
while [[ pergunta_h -lt minimum_limit || pergunta_h -gt maximum_limit ]] # Define o valor máximo e mínimo inserido
do
  read -r -p "Insira um valor de 1 a 5: " pergunta_h
done
echo ""
echo "I. Como avalias a tua pancada de esquerda?"
echo "1 - Tento não dar a pancada de esquerda, procurando sempre dar de direita"
echo "2 - Realizo a pancada apesar de não fazer bem o movimento nem colocar"
echo "3 - Mantenho as trocas de bola, com limitações na potência e colocação"
echo "4 - Respondo com segurança, coloco onde quero e devolvo bolas difíceis planas e cortadas"
echo "5 - Tenho muita segurança, cometo poucos erros e respondo com grande potência"
while [[ pergunta_i -lt minimum_limit || pergunta_i -gt maximum_limit ]] # Define o valor máximo e mínimo inserido
do
  read -r -p "Insira um valor de 1 a 5: " pergunta_i
done
echo ""
echo "J. Como avalias a tua pancada de direita?"
echo "1 - Tento devolver a bola, dando a pancada por baixo da bola"
echo "2 - Não respondo com potência"
echo "3 - Tenho segurança mas procuro colocação e com alguma potência"
echo "4 - Consigo manter trocas de bolas longas, pancada com potência e colocada"
echo "5 - Consigo colocar a bola onde quero, assim como bolas difíceis com pancadas planas e cortadas"
while [[ pergunta_j -lt minimum_limit || pergunta_j -gt maximum_limit ]] # Define o valor máximo e mínimo inserido
do
  read -r -p "Insira um valor de 1 a 5: " pergunta_j
done
echo ""
total=$(( pergunta_a + pergunta_b + pergunta_c + pergunta_d + pergunta_e + pergunta_f + pergunta_g + pergunta_h + pergunta_i + pergunta_j ))
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
