#!/bin/bash -x
echo " Welcome to Employee Wage Computation Program "

#variables
IS_PART_TIME=1;
IS_FULL_TIME=2
EMP_WAGE_PER_HR=20;
NUM_OF_WORKING_DAYS=20;
MAX_HRS_IN_MONTH=100;
EMP_CHECK=$((RANDOM%3));

#constants
totalEmpHr=0;
totalWorkingDays=0;

declare -A dailywage

function getWorkHrs() {
#	local $EMP_CHECK=$1
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
			echo $empHrs
}
function getEmpWage() {
#	local empHrs=$1
		echo $(( $empHrs * $EMP_WAGE_PER_HR ))
}
while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	EMP_CHECK=$((RANDOM%3));
	empHrs="$( getWorkHrs $EMP_CHECK )"
	totalEmpHr=$(( $totalEmpHr + $empHrs ))
	dailywage[$totalWorkingDays]="$( getEmpWage $empHrs )"
done
	TotalSalary=$(( $totalEmpHr * $EMP_WAGE_PER_HR ))
	echo $TotalSalary
	echo ${dailywage[@]}
	echo ${!dailywage[@]}
