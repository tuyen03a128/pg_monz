#!/bin/bash

PGSHELL_NODE="$1"

pcp_node_info -h localhost -U pgpool $PGSHELL_NODE -w 2>/dev/null
if [ $? -ne 0 ]; then
	echo 0
fi