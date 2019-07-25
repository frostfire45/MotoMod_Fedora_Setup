#!/bin/bash

colCount= stty size | awk '{print $2}'
t1=$1
t2=$2
echo $colCount

