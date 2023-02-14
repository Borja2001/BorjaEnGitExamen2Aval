numLin=$((`cat consumos.txt | wc -l`+1))
linMax=1
linMin=1
consumMax=`cat consumos.txt | head -n2 | tail -n1 | awk '{print $4}'`
consumMin=`cat consumos.txt | head -n2 | tail -n1 | awk '{print $4}'`
for i in `seq 2 $numLin`
do
    consumo=`cat consumos.txt | head -n$i | tail -n1 | awk '{print $4}'`
    if [ $consumo -gt $consumMax ]
    then
    consumMax=$consumo
    linMax=$i
    fi

    if [ $consumo -lt $consumMin ]
    then
    consumMin=$consumo
    linMin=$i
    fi
done

#echo $consumMax
echo "El consumo maximo es: `cat consumos.txt | head -n$linMax | tail -n1 `"
#echo $consumMin
echo "El consumo minimo es: `cat consumos.txt | head -n$linMin | tail -n1 `"

