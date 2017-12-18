#!/bin/sh
if test $# -eq 2
then
    package_name=$1
    src=$2
    npm install ${package_name}
    browserify $2 > bundle.js
else
    echo 'Missing Operand'
fi
