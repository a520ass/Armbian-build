#!/bin/bash

echo "diysh当前目录:$(pwd)"
# shshell
for shshell in `find ../patch/armbian/${1}/*.sh | LC_ALL=C sort -u`
do
	. $shshell
	if [ $? -eq 0 ]
	then
		echo "<== [S] shshell file $shshell"
	else
		echo "<== [F] shshell file $shshell"	
	fi
done