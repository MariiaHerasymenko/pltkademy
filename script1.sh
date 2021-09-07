#!/bin/bash
cd /path/to/directory
for i in {000..100};
do
        sed -i "s/ngnix-01.com/ngnix-02.com/g" $1;
done
