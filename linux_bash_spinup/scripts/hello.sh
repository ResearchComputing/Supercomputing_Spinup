#!/bin/bash

mytext=$(cat hello_world.txt)

#with single ticks (')
echo 'I just want to say $mytext'

#with quotes (")
echo "I just want to say $mytext"

#with disambiguation
echo "I just want to say ${mytext}"

