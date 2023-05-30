#!/bin/sh
# Purpose: Monitor Linux disk space and send an email alert to $ADMIN
# alert level
ALERT=90
 
# sysadmin email ID
ADMIN="mounika.matle@gmail.com" 

# to get free space 
  usep=$(free | awk '/Mem/{printf("%.2f"), $3/$2 * 100}')

  # creating if statment to send mail 
  if [ $usep > $ALERT ]; then
    echo "Running out of space  on $(hostname) as on $(date)" |
    mail -s "Alert: Almost out of disk space $usep%" "$ADMIN"
  fi
