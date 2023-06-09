#!/bin/bash

echo "Checking for missing security updates..."

# Use the yum command to list all available updates that are security-related.
# The "-q" option means "quiet mode", which prevents any interactive prompts.
# The "--security" option filters the results to show only security-related updates.
# The "-C" option means "cache-only mode", which uses the local cache of package metadata instead of fetching new metadata from a remote repository.
# Redirect the output to a file.
yum -q check-update --security -C > /tmp/security_updates.txt

# If the file is empty, then there are no security updates available.
if [ ! -s /tmp/security_updates.txt ]; then
  echo "There are no missing security updates."
else
  echo "The following security updates are missing:"
  # Display the contents of the file, which lists the security updates that are missing.
  cat /tmp/security_updates.txt
fi


echo "Done!"

echo "System information:"

echo " Use the "uname" command to display information about the operating system:"
uname -a

echo "Use the "lsb_release" command to display information about the Linux distribution : "
lsb_release -a

echo "Use the "lscpu" command to display information about the CPU:"
lscpu

echo " Use the "free" command to display information about memory usage: "
free -m

echo "Use the "df" command to display information about disk usage: "
df -h

echo "Done!"
