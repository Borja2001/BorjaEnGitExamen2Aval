#!/bin/bash 
numLin=$((`cat consumos.txt | wc -l`+1))
consumo=0
while [ $consumo -eq 0 ]
do 
read -p "Dame la ciudad: " ciud
    cont=1
    while [ $cont -le $numLin ]
    do
    ciudad=`cat consumos.txt | head -n$cont | tail -n1 |awk '{print $1}'`
    if [ $ciudad = $ciud ]
    then 
    parteConsumo=`cat consumos.txt | head -n$cont | tail -n1 | awk '{print $4}'`
    consumo=$(($consumo+$parteConsumo))
    fi
    cont=$(($cont+1))
    done
echo $consumo
done