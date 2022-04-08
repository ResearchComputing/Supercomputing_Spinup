#!/bin/bash

for i in {1..200}; do
echo "Hello world from file_${i}.txt" >file_${i}.txt
done
