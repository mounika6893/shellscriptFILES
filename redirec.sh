#!/bin/bash
# setting file name as variable
data_file="table_file"

# command to print 2nd and 5th cloumn of data file
awk '{print $2, $5}' "$data_file"

