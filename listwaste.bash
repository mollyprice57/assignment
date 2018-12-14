#!/bin/bash
#Lists the name and filesize  of all files in waste
#U1857246 Molly Price

for filename in $(ls $HOME/bin/.waste/)
do
    Bytes=$(stat -c%s "$filename")
    echo "$filename is $Bytes bytes big"
done
