#!/bin/bash -x
echo " Welcome to Employee Wage Computation Program "

#variables
IS_PART_TIME=1;
IS_FULL_TIME=2
EMP_WAGE_PER_HR=20;
NUM_OF_WORKING_DAYS=20;
MAX_HRS_IN_MONTH=100;
EMP_CHECK=$((RANDOM%3))

#constants
totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
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


totalEmpHr=$(( $totalEmpHr + $empHrs ))
done
		TotalSalary=$(( $totalEmpHr * $EMP_WAGE_PER_HR ))
			echo $TotalSalary
