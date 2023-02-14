numLin=$((`cat consumos.txt | wc -l`+1))
consumo=0
cont=1
num=0
while [ $cont -le $numLin ]
do
    ciudad=`cat consumos.txt | head -n$cont | tail -n1 |awk '{print $1}'`
    if [ $ciudad = $1 ]
    then 
    parteConsumo=`cat consumos.txt | head -n$cont | tail -n1 | awk '{print $4}'`
    consumo=$(($consumo+$parteConsumo))
    num=$(($num+1))
    fi
    cont=$(($cont+1))
done
media=$(($consumo/$num))
#echo $media
`rm media.txt`
echo $media >> media.txt