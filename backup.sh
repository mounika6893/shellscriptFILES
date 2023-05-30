#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################

# source path 
backup_files="/home/ubuntu"

# Destinatiion path
dest="/home/ubuntu/shellFILES"

# setting date as archive filename.
day=$(date +"%Y-%m-%d" )

archive_file="$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest

