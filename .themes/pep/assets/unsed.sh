#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#070d13/g' \
         -e 's/rgb(100%,100%,100%)/#A7CEC8/g' \
    -e 's/rgb(50%,0%,0%)/#070d13/g' \
     -e 's/rgb(0%,50%,0%)/#070d13/g' \
 -e 's/rgb(0%,50.196078%,0%)/#070d13/g' \
     -e 's/rgb(50%,0%,50%)/#0e1219/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#0e1219/g' \
     -e 's/rgb(0%,0%,50%)/#D2E7E4/g' \
	$@
