#!/bin/bash
# Authors : Kyle Stewart - Parter: Yair Bennaim
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a regular expression: "
read regExp
echo "Enter a filename: "
read filename

#grep -c -P $regExp regex_practice.txt
#echo $regExp

#find number of phone numbers
grep -c -P '\d{3}-\d{3}-\d{4}' $filename
grep -c -P '.*\@.*\.[a-z]{3}'  $filename
grep -P '(303)-\d{3}-\d{4}$' $filename > phone_results.txt
grep -P '.*\@(geocities.com)' $filename > email_results.txt
grep -P $regExp $filename > command_results.txt
