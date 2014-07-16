#!/bin/bash

#Requires one parameter for the date

for each in `grep $1 /var/log/apache2/access.log | awk '{print $1}'| uniq -c | sort -r|awk '{print $2}' `
do
echo $each
done

