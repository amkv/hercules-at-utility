#!/bin/bash

FILES="boar.sh commands.sh delete.sh"
LOGIN="akalmyko"
ADDRESS="172.16.234.128"
PORT="22"
RPATH="/home/akalmyko/Documents"
SCP="/usr/bin/scp"

echo "transfering files:" 
echo "$FILES"
echo "to $LOGIN@$ADDRESS on port $PORT"

$SCP -P $PORT $FILES $LOGIN@$ADDRESS:$RPATH

echo "done"
