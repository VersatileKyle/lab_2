#!/bin/bash
# Authors : Kyle Stewart - Partner: Yair Bennaim
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a regular expression: "
read regExp
echo "Enter a filename: "
read filename

#Problem 1 - # of phone numbers in the file
grep -c -P '\d{3}-\d{3}-\d{4}' $filename

#Problem 2 - # of emails in the file
grep -c -P '.*\@.*\.[a-z]{3}'  $filename

#Problem 3 - 303 phone numbers
grep -P '(303)-\d{3}-\d{4}$' $filename > phone_results.txt

#Problem 4 - finding all geocities emails
grep -P '.*\@(geocities.com)' $filename > email_results.txt

#Problem 5 - user's expression
grep -P $regExp $filename > command_results.txt
