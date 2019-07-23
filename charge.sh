#!/usr/bin/env bash
scripPath=$(dirname $(readlink -f "$0"))
chamberFile=$scripPath/chamber.txt 
command=$(zenity --text-info --title="Command to the Chamber" --filename=/home/danie/Desktop/test.txt --editable --width=600)

if [ -z "$var" ]
then
      echo $command > $chamberFile;
fi