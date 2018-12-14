#!/bin/bash
#Merge files together with a new name and adds a header to the top
#U1857246 Molly Price
echo "Enter new file nsme"
read newfile
touch $newfile
echo "Enter header for the file"
read header
for var in "$@"
do
if [ -f "$var" ]
then
cat $var >> $newfile
sed -i "1i "#"  $header" $newfile
else
echo "That's not a file"
fi
done
