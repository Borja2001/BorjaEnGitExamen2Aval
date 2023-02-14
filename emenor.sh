#!/bin/sh
numLin=$((`cat consumos.txt | wc -l`+1))
ciuMenor=2
./cmedia.sh `cat consumos.txt | head -n2 | tail -n1 |awk '{print $1}'`
mediaMenor=`cat media.txt| head -n1| awk '{print $1}'`
for i in `seq 2 $numLin` 
do
    ciudad=`cat consumos.txt | head -n$i | tail -n1 |awk '{print $1}'`
    ./cmedia.sh $ciudad
    media=`cat media.txt| head -n1| awk '{print $1}'`
    
    if [ $media -lt $mediaMenor ]
    then
    mediaMenor=$media
    ciuMenor=$i
    fi
done
    
echo ciudad=`cat consumos.txt | head -n$ciuMenor | tail -n1 |awk '{print $1}'`