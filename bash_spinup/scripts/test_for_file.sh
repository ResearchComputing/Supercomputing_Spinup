#!/bin/bash

#this tests for the existence of a file

filename="calcsine.sh"

if [ -f $filename ]; then
 echo "yes"
else
 echo "no"
fi
