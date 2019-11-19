#!/bin/bash

PGSHELL_CONFDIR="$1"
PGSHELL_NODE="$2"

# Load the psql connection option parameters.
source $PGSHELL_CONFDIR/pgpool_funcs.conf

export PCPPASSFILE=$PCPPASSFILE; pcp_node_info -h localhost -U pgpool $PGSHELL_NODE -w 2>/dev/null
if [ $? -ne 0 ]; then
	echo 0
fi
