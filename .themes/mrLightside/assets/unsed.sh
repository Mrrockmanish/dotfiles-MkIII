#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#ffffff/g' \
         -e 's/rgb(100%,100%,100%)/#383e42/g' \
    -e 's/rgb(50%,0%,0%)/#070d13/g' \
     -e 's/rgb(0%,50%,0%)/#fcfcfc/g' \
 -e 's/rgb(0%,50.196078%,0%)/#fcfcfc/g' \
     -e 's/rgb(50%,0%,50%)/#0e1219/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#0e1219/g' \
     -e 's/rgb(0%,0%,50%)/#f2f4f4/g' \
	$@
