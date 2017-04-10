#!/bin/bash

FILENAME="test"
FILEPATH=$(pwd)/
FILE=$FILEPATH$FILENAME
DATE=$(date)

touch $FILE
echo "this test file created $DATE" > $FILE
