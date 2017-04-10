#!/bin/bash

COUNT=$(atq | wc -l)

if [ $COUNT = "0" ]; then
	echo "nothing to delete"
else
	echo "these tasks will be deleted"
	atq
	FILES=$(atq | awk '{print $1}' | tr '\n' ' ')
	atrm $FILES
	echo "$COUNT tasks deleted"
fi
