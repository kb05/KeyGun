#!/usr/bin/env bash
scripPath=$(dirname $(readlink -f "$0"))
chamberFile=$scripPath/chamber.txt 


if [ ! -f "$chamberFile" ] 
then
    echo '' > $chamberFile;
fi

if [ "$1" == "Charge" ]
then
    command=$(zenity --text-info --title="Command to the Chamber" --filename=$chamberFile --editable --width=600)
    if [ ! -z "$command" ]
	then
   		echo $command > $chamberFile;
  	fi
elif [ "$1" == "Shoot" ]
then
	command=$(cat $chamberFile);
	gnome-terminal -x sh -c "$command; sleep 2;exit;fish"
    exit 0
else
    echo "The command must be executed with the 'Charge' or 'Shoot' option"
    exit 1
fi
