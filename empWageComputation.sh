#!/bin/bash -x
echo " Welcome to Employee Wage Computation Program "

#variables
IS_PRESENT=1;
EMP_WAGE_PER_HR=20;
EMP_HR=8;

EMP_CHECK=$((RANDOM%2))
if [ $EMP_CHECK -eq $IS_PRESENT ]
then
	echo " Employee Is Present "
		Salary=$(($EMP_WAGE_PER_HR * $EMP_HR))
	echo " Salary = " $Salary
else
	echo " Employee Is Absent "
fi
