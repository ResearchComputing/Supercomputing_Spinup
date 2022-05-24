#!/bin/bash 

person="Rob"

case ${person} in 
 "Chad") echo "${person} is my best friend" ;;
 *) echo "I don't know ${person}" ;;
esac
