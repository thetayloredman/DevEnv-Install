#!/usr/bin/env bash

function PRINT()
{
	printf "%b\n" "${@}"
}

function PAUSE()
{
	local pauser=""
	PRINT 
	read -p "Press ENTER to continue..." pauser
}


SCRIPTS="$(dirname $(readlink -f $0))/scripts"

for script in $SCRIPTS/*; do

	[[ "${1}" != '--verbose' ]] \
		&& $script || $script --verbose

	PAUSE
	clear

done
