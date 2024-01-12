#!/bin/bash
# file input
if [ "$#" -eq 0 ]; then
	echo "usage: payloads_generator <url_file> <payload_file>"
	exit
fi
if [ "$1" == "-h" ]; then
	echo "usage: payloads_generator <url_file> <payload_file>"
	exit
fi
if [ -z "$2" ]; then
	echo "incorrect number of arguments supplied."
	echo "usage: payloads_generator <url_file> <payload_file>"
	exit
fi
url_file=$1
payload_file=$2
# replace parameters in file with payloads
while IFS= read -r payload ; do
	cat $url_file | qsreplace $payload
done < $payload_file
