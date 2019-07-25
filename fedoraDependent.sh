#!/bin/bash
path2Dev="/home/`id -u -n`/development/"

programList(){
input='history.txt'
stringBuild=" "
while IFS= read -r line
do
    stringBuild+=" $line"
    
done < "$input"
echo $stringBuild
}
#########################################
#  Start of Script
#---------------------------------------#
echo "Fedora Script"



sudo dnf group install "C Development Tools and Libraries"
sudo dnf install `programList` 

echo "Program Complete"


