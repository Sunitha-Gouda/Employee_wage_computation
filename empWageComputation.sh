#!/bin/bash -x
echo " Welcome to Employee Wage Computation Program "

#variables
IS_PART_TIME=1;
IS_FULL_TIME=2
EMP_WAGE_PER_HR=20;
NUM_OF_WORKING_DAYS=20;

for (( Days=1; Days<=$NUM_OF_WORKING_DAYS; Days++ ))
do
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

		Salary=$(( $NUM_OF_WORKING_DAYS * $empHrs ))
			echo " Salary = " $Salary
		TotalSalary=$(( $TotalSalary + $Salary ))
			echo $TotalSalary
done
