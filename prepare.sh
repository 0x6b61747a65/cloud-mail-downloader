#!/bin/bash
#==========================================#
#
#
#==========================================#

set -eu -o pipefail # fail on error and report it, debug all lines

distro_type=$(grep -i id_like)
php_dir=$(which php)
aria_dir=$(which aria2c)

if [[ -z "$php_dir" ]]
then
	echo "No PHP installed"
	exit 1
fi

if [[ -z "$aria_dir" ]]
then
	echo "No aria2c installed"
	exit 1
fi

if [[ ! -f links.txt ]]
then
	echo "No file with links found"
fi

#ln -s $aria_dir .
