#!/bin/bash
#
#
#This script is represent the log anaylsis from log file with multiple actions.
#
#to Daisplay the usages of logs file script.

usage() {
	echo "Use_file :- $0 /home/ubuntu/Devops90DaysChallange/Devops90Days_journey/day-wise-task/day10/zookeper.log"
	exit 1
}

#check if the bath is is provided
#
if [ $# -ne 1 ]; then
	usage
fi


LOG_FILE=$1

#Check the log files is exist or not
if [ ! -f "$LOG_FILE" ]; then
	echo "Error : log file $LOG_FILE does not exist."
	exit 1
fi

#variables declairation
ERROR_KEYWORD="INFO"
CRITICAL_KEYWORD="CRITICAL"
DATE=$(date +"%Y-%m-%d")
SUMMARY_REPORT="summary_report_$DATE.txt"

#create summary report 
{
	echo "date of troubleshoot/analysis:- $DATE"
	echo "log file details :- $LOG_FILE"
} > "$SUMMARY_REPORT"

#total lines processed
TOTAL_LINES=$(wc -l < "$LOG_FILE")
echo "TOTAL lines processed :- $TOTAL_LINES" >> "$SUMMARY_REPORT"

#count the error messages 
ERROR_COUNT=$(grep -c "$ERROR_KEYWORD" "$LOG_FILE")
echo "Total error counts are :- $ERROR_COUNT" >> "$SUMMARY_REPORT"

#list critical event with lines
echo "the critical errors are as follows  :- " >> "$SUMMARY_REPORT"
grep -n "$CRITICAL_KEYWORD" "$LOG_FILE" >> "$SUMMARY_REPORT"


#IDENTIFY THE TOP 5 MOST COMMON ERROR MESSAGES
declare -A error_message
while IFS= read -r line; do
	if [[ "$line" == *"$ERROR_KEYWORD"* ]]; then
		message=$(echo "$line" | awk -F"$ERROR_KEYWORD" '{print $2}')
		((error_message["$message"]++))
	fi
done < "$LOG_FILE"

#sort and display top 5 error messages
echo "top 5 error messages with oc-count :-" >> "$SUMMARY_REPORT"
for message in "${!error_message[@]}"; do
	echo "${error_message[$message]} $message"
done | sort -rn | head -n 5 >> "$SUMMARY_REPORT"

#PRINT SUMMARY REPORT

cat "$SUMMARY_REPORT"



	
