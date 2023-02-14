#!/bin/sh
ciudad=$1
./cmedia.sh $ciudad
 media=`cat media.txt| head -n1| awk '{print $1}'`

echo $media
if [ $media -lt 400 ]
then 
    echo "ECO"
else
    echo "NO ECO"
fi
