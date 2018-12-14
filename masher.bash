#!/bin/bash
#Counts and shows different characters in a given string
#U1857246 Molly Price
echo "Value to mash is:" $1
echo "Enter another string of characters or a * to exit."
echo "Entering a * anywhere in the string will terminate the script"
echo "Enter string: "
read addingstring
mergedstring="$1$addingstring"
while [[ ${addingstring} != *"*"* ]]
do
	read addingstring
	mergedstring="$mergedstring$addingstring"
done

cutstring="$(cut -d'*' -f1<<<"$mergedstring")"
echo "The cut string is: "
echo $cutstring

echo "The entered string is: " $mergedstring

echo "The control value is true at:"
echo $mergedstring | grep -aob '*' | grep -oE '[0-9]+'

nonalphastring=$(printf '%s' "$cutstring" | sed 's/[^a-zA-Z0-9]//g')


echo "Number of letters in the string: "
letterstring=$(printf '%s' "$nonalphastring" | tr -d '[0-9]_')
echo "${#letterstring}"

echo "Number of digits in the string: "
numberstring=$(printf '%s' "$nonalphastring" | sed 's/[A-Za-z]*//g')
echo "${#numberstring}"

echo "The number of non alpha numeric characters in the string is:"
echo $[ "${#cutstring} " - "${#nonalphastring}" + 1 ]

echo "The length of the string is"
echo "${#mergedstring}"

echo "Characters mashed before control value is:"
echo "${#cutstring}"
