#!/bin/sh
package_name=$1
src=$2
npm install ${package_name}
browserify $2 > bundle.js
