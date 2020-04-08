#!/bin/bash

SERVERLIST=("webserv1" "webserv2" "backup1" "backup2" "database1" "database2" "database3")
COUNT=0

for INDEX in ${SERVERLIST[@]}; do
	echo "SHUTTING DOWN ${SERVERLIST[COUNT]}"
	COUNT=`expr $COUNT + 1`
done

