#!/bin/bash

#variables

p=/home/ubuntu/projects/project_01/files
DAYS=10
DEPTH=1
RUN=0

#check if directory is present or not

if [ ! -d $p ]
then
	echo "directory dosent exists at : $p"
	exist 1
fi

#create archieve folder if not present

if [ ! -d $p/archive ]
then
	sudo mkdir $p/archive
fi

#Finding files larger than 20MD and older then 10days

for i in "find $p -maxdepth $DEPTH -type f -size +20M"
do
	if [ $RUN -eq 0 ]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i === $p/archive"
		sudo gzip $i || exit 1 
		sudo mv $i.gz $p/archive || exit 1
	fi

done
