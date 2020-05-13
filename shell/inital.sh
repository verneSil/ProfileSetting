#!/bin/bash
currentDir=`pwd`
cd ..
currentPDir=`pwd`
cd $currentDir
initDir=$currentDir/initshells
echo initDir=$initDir
cd $initDir
initShells=`ls`
#echo $initShells
#echo ${#initShells[*]}
callInitShell(){
	for i in $initShells
	do
		if [ "$i" = "inital.sh" ];
		then
			continue
		fi
		echo "exec $i ing..."
		sh $initDir/$i
	done
}
callInitShell
