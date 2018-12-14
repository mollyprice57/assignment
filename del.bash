#!/bin/bash
#Copies files to the waste directory
#U1857246 Molly Price
for filename in "$@"
do
cp $filename ~/bin/.waste
done
