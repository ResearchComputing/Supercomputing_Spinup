#!/bin/bash
# Calculate the sine of the argument.

if [ $# -eq 1 ] ; then
  sine=$(echo "s($1)" | bc -l )
  echo "The sine of $1 is ${sine}"   
else
  echo "Usage: $0 <number in radians>" 2>&1 
  exit 1
fi


