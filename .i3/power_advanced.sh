#!/bin/bash

power_state=`acpi -b | awk '{print toupper($3)}' | tr -d ', \n'`
if [ $power_state = "CHARGING" ]
	then
	echo 0
else if [ $power_state = "FULL" ]
	then
	echo 1
else 
	echo 2
fi
fi