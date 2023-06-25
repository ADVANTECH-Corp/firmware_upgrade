#!/usr/bin/env bash

DIR=/mnt/data/firmware_upgrade

mkdir -p $DIR
mkdir EC21EUX_FW
unzip -d EC21EUX_FW EC21EUXGAR08A07M1G_20.200.20.200.zip > /dev/null
sync
sleep 2

echo Start Upgrading to V07
./QFirehose -f EC21EUX_FW > $DIR/Result.log
sleep 20

result=`grep "successfully" $DIR/Result.log`
if [[ $result != "" ]];then
   echo $result         
else
   echo "Upgrade module fail" 	
fi

rm -fr EC21EUX_FW $DIR
sync

exit 0
