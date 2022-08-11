#!/bin/bash

currpath=$1;

#Calculting total number of lines
val=`awk 'END {print NR}' $currpath`;
(( val++ ));
val=$(( val / 2 ));

awk 'BEGIN{ num='$val'; } NR == num {print $0}' $currpath;
