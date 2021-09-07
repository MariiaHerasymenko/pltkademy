#!/bin/bash
random=$(</dev/urandom tr -dc A-Za-z0-9 | head -c1000)
for i in {1..10}; do
	echo ${random} >test_`date +%H%M`_$i.txt
done

#to run a script every 6 hours we need to use the following command
#  0 */6 * * * /path/to/scipt
