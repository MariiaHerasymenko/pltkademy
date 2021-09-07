#!/bin/bash
lsof -c java > /tmp/investigation/java.txt 
for i in  $(cat java.txt); do
        PID=$(awk '/^Pid:/ {print $2}' /tmp/investigation/java.txt) 
        echo "Processes with $PID" > /tmp/investigation/access$1_$PID.txt
done
