#!/bin/bash

# I can run this script like:
# ####################################################
# #!/bin/bash
# echo "touch testfile" | at 8.42am December 21
# ###################################################
# but I using at with special flag -f <file>
#

FUTURE="8.42am December 21"
NOWPLUSONE="now + 1 minutes"
BIRTHDAY="12.12am December 28"
NOW="now"
SCRIPT="commands.sh"
PATH=$(pwd)/
COMMANDS=$PATH$SCRIPT
AT=/usr/bin/at

if [ ! -e $SCRIPT ]; then
	echo "$SCRIPT does not exist"
	exit 0
fi

echo "Hi, choose when you want to run your script? press [ENTER] after input"
echo "(1) $FUTURE"
echo "(2) $NOWPLUSONE"
echo "(3) just $NOW"
echo "(4) my birthay $BIRTHDAY"
echo "(5) set specific time"

read TIME
if [ $TIME = "1" ]; then
	$AT $FUTURE -f $COMMANDS
elif [ $TIME = "2" ]; then
	$AT $NOWPLUSONE -f $COMMANDS
elif [ $TIME = "3" ]; then
		$AT $NOW -f $COMMANDS
elif [ $TIME = "4" ]; then
		$AT $BIRTHDAY -f $COMMANDS
elif [ $TIME = "5" ]; then
	echo "input time and press [ENTER]"
	echo "for example, commonly used:"
	echo "noon, midnight, teatime, tomorrow, noon tomorrow"
	echo "next week, next monday, fri, 9:00 AM, 2:30 PM tomorrow"
	echo "now + 1 hour, now + 2 days, 4 PM + 2 days, now + 5 years"
	read OTHER
	echo $OTHER
	$AT $OTHER -f $COMMANDS
else
	echo "wrong number, only 1-5"
fi
