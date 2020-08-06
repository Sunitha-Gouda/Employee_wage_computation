#!/bin/bash -x
echo " Welcome to Employee Wage Computation Program "

#variables
IS_PART_TIME=1;
IS_FULL_TIME=2
EMP_WAGE_PER_HR=20;

EMP_CHECK=$((RANDOM%3))
if [ $EMP_CHECK -eq $IS_FULL_TIME ]
then
	echo "Employee is Full time employee  "
	empHrs=8;
elif [ $EMP_CHECK -eq $IS_PART_TIME ]
then
	echo " Employee s Part time employee  "
	empHrs=4;
else
	empHrs=0;
	echo " Employee is Absent "
fi
Salary=$(($EMP_WAGE_PER_HR * $empHrs ))
echo " Salary = " $Salary
