#!/bin/bash
#Makes the given file exactuable
#U1857246 Molly Price
for filename in $@
do
    chmod +x $filename
done
