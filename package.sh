#!/bin/bash
# enter  the package to be installed
echo "Enter package to install"

# read the given package name
read pack

#creating if condition to run the command if the user is root user
if [ [ $EUID -ne 0 ] ]
then
  apt-get install $pack
  echo "The user is root user,  package  is installing."
else
  echo "The user is not root user, so  package can not be installed, try again."
fi
