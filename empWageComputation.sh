#!/bin/bash -x
echo " Welcome to Employee Wage Computation Program "

#variables
IS_PART_TIME=1;
IS_FULL_TIME=2
EMP_WAGE_PER_HR=20;

EMP_CHECK=$((RANDOM%3))
case $EMP_CHECK  in
	$IS_FULL_TIME)
			empHrs=8
			;;
	$IS_PART_ITME)
			empHrs=4
			;;
	*)
			empHrs=0
			;;
esac

Salary=$(($EMP_WAGE_PER_HR * $empHrs ))
echo " Salary = " $Salary
