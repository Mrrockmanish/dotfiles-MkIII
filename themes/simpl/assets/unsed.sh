#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#0b0d0f/g' \
         -e 's/rgb(100%,100%,100%)/#e8e4cf/g' \
    -e 's/rgb(50%,0%,0%)/#0c1015/g' \
     -e 's/rgb(0%,50%,0%)/#121517/g' \
 -e 's/rgb(0%,50.196078%,0%)/#121517/g' \
     -e 's/rgb(50%,0%,50%)/#e5e5e5/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#e5e5e5/g' \
     -e 's/rgb(0%,0%,50%)/#14171c/g' \
	$@
