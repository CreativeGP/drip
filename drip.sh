#!/bin/sh
if test $# -ge 2
then
    # Parse arguments
    while getopts i:n:s OPT
    do
	case $OPT in
	    "s" ) FLG_SAVE_BYPRODUCTS="TRUE" ;;
	    "i" ) FLG_PACKAGE_NAME="TRUE" ; PACKAGE_NAME="$OPTARG" ;;
	    "n" ) FLG_SRC="TRUE" ; SRC="$OPTARG" ;;
	esac
    done

    if [ ${FLG_PACKAGE_NAME} = "TRUE" ] && [ ${FLG_SRC} = "TRUE" ] ; then
	# Install packages
	npm install ${PACKAGE_NAME}
	browserify ${SRC} > bundle.js
	
	# Delete byproducts (optional)
	rm -r node_modules package_lock.json
    else
	echo 'drip -i input.js -n package-name -s(save byproducts)'
    fi
else
    echo 'drip -i input.js -n package-name -s(save byproducts)'
fi
