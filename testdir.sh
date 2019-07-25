#!/bin/bash

runOSScript(){    
    testOS
    var=$?
    echo "$OS"
    if [ "$var" -eq "1" ]; then
        
        ~/Development/ubuntu.sh
    fi
    if [ "$var" -eq "2" ]; then
    ~/Development/fedora.sh
    fi
}

testOS(){
FEDORA=/etc/dnf
UBUNTU=/etc/apt

if [ -d "$UBUNTU" ]; then
   echo "Is Ubuntu"
   isOS=1
  elif [ -d "$FEDORA" ]; then
     echo "Is Fedora"
   isOS=2
  else
     echo "Non System"
     isOS=0
fi

return $isOS
}

#testOS
level="/home/donald/Development/"
for script in "fedora.sh" "ubuntu.sh"
    do
    chmod +x "$level""$script"
done 
runOSScript 


