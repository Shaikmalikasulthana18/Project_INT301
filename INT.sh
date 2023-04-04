#!/bin/bash

echo "Checking for missing security updates..."

# Use the yum command to list all available updates that are security-related.
# The "-q" option means "quiet mode", which prevents any interactive prompts.
# The "--security" option filters the results to show only security-related updates.
# The "-C" option means "cache-only mode", which uses the local cache of package metadata instead of fetching new metadata from a remote repository.
# Redirect the output to a file.
yum -q check-update --security -C 

echo "Done!"

