#!/bin/bash
#The code does simple mathmatics on the numbers input
#U1857246 Molly Price
case "$1" in
+)
if [ "$2" != [0-9] ] || [ "$3" != [0-9] ]
then
echo "You didn't enter a number"
else
Answer=$(($2+$3))
echo "$Answer"
fi
;;
-)
if [ "$2" != [0-9] ] || [ "$3" != [0-9] ]
then
echo "You didn't enter a number"
else
Answer=$(($2-$3))
echo "$Answer"
fi
;;
x)
if [ "$2" != [0-9] ] || [ "$3" != [0-9] ]
then
echo "You didn't enter a number"
else
Answer=$(($2*$3))
echo "$Answer"
fi
;;
/)
if [ "$2" != [0-9] ] || [ "$3" != [0-9] ]
then
echo "You didn't enter a number"
else
Answer=$(($2/$3))
echo "$Answer"
fi
;;
esac

