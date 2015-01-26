#!/bin/bash

timeStamp=$(date '+%Y%m%d')
timeStampDetail=$(date '+%Y%m%d_%H%M%S')

# # Debug message.
# echo $timeStamp
# echo $timeStampDetail

# Create the backup folder if it is not exist.
if [[ ! -d $timeStamp ]]; then
	mkdir $timeStamp
fi

# Copy the config.
cp .gitconfig $timeStamp/
cp -pr git $timeStamp/

# Package the backup folder.
tar -zcvf $timeStampDetail.tar.gz $timeStamp

#Move the backup package to the folder.
# Create the backup folder if it is not exist.
if [[ ! -d loadBackup ]]; then
	mkdir loadBackup
fi
mv $timeStampDetail.tar.gz loadBackup/

# Remove the backup folder.
rm -r $timeStamp
