#!/usr/bin/bash

# Mostra informações do sistema operacional
echo ""
echo "<--------------System Info------------>"
echo "Sistema operacional: $(uname -r)"
echo "Nome de utilizador: $(uname -n)"
arquitetura=$(uname -i)
echo Arquitetura: "$arquitetura"
if [[ $arquitetura == x86_64* ]]; then
    echo "Arquitetura x64"
elif [[ $arquitetura == i486* ]]; then
    echo "Arquitetura x32"
elif  [[ $arquitetura == ^arm* ]]; then
    echo "Arquitetura ARM"
fi
echo ""
echo "<--------------CPU Info--------------->"
# Mostra informações do processador (CPU)
cpu_model=$(grep "model name" /proc/cpuinfo | head -n 1 | awk -F ':' '{print $2}')
cpu_cores=$(grep -c "processor" /proc/cpuinfo)
#cpu_threads=$(lscpu | grep "Thread(s) per core" | awk '{print $2}')
echo "Processador: $cpu_model"
echo "Número de núcleos: $cpu_cores"
#echo "Número de threads: $cpu_threads"
echo ""
echo "<--------------Memory Info------------>"
# Mostra informações da memória RAM
mem_total=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
mem_free=$(awk '/MemFree/ {print $2}' /proc/meminfo)
#mem_used=$(awk '/MemFree/ {print $2}' /proc/meminfo)
echo "Memória total: $(($mem_total / 1024))MB"
echo "Memória livre: $(($mem_free / 1024))MB"
#echo "Mémoria usada: $(($mem_used / 1024))MB"
echo ""
echo "<--------------Disc Info-------------->"
# Mostra informações do disco 
disk_total=$(df -h / | awk '{print $3}' | tail -n 1)
disk_used=$(df -h / | awk '{print $4}' | tail -n 1)
disk_free=$(df -h / | awk '{print $5}' | tail -n 1)
echo "Espaço total do disco: $disk_total"
echo "Espaço utilizado do disco: $disk_used"
echo "Espaço livre no disco: $disk_free"
echo ""


