#!/bin/bash

if [ $# != 1 ]; then
	echo "Only 1 argument can be passed in"
	exit 1
fi

echo $1

