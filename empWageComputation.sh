#!/bin/bash -x
echo " Welcome to Employee Wage Computation Program "

#variables
IS_PRESENT=1;

EMP_CHECK=$((RANDOM%2))
if [ $EMP_CHECK -eq $IS_PRESENT ]
then
	echo " Employee Is Present "
else
	echo " Employee Is Absent "
fi