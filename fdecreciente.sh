#!/bin/sh
numLin=$((`cat consumos.txt | wc -l`+1))
ciudadAnterior=ciudad=`cat consumos.txt | head -n2 | tail -n1 |awk '{print $1}'`
consumoAnterior=`cat consumos.txt | head -n2 | tail -n1 | awk '{print $4}'`
for i in `seq 3 $numLin`
do
    ciudad=`cat consumos.txt | head -n$i | tail -n1 |awk '{print $1}'`
    consumo=`cat consumos.txt | head -n$i | tail -n1 | awk '{print $4}'`

    if [ $ciudadAnterior = $ciudad ]
    then 
      if [ $consumo -lt $consumoAnterior ]  
      then
        
      fi
    else

    fi

done