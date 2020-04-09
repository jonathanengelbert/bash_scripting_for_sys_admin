#!/bin/bash
# Script to iterate through an array


SERVERLIST=("dev-server1", "dev-server2", "dev-server3", "database-server1", "database-server2")
COUNT=0


for I in ${SERVERLIST[@]}; 
  do
	  echo "Shutting Down ${SERVERLIST[COUNT]}"
	  COUNT="`expr $COUNT + 1`"
  done
