#!/bin/sh
sed -i \
         -e 's/#0f1419/rgb(0%,0%,0%)/g' \
         -e 's/#e8e4cf/rgb(100%,100%,100%)/g' \
    -e 's/#171421/rgb(50%,0%,0%)/g' \
     -e 's/#FF2B91/rgb(0%,50%,0%)/g' \
     -e 's/#0a0f14/rgb(50%,0%,50%)/g' \
     -e 's/#fefbec/rgb(0%,0%,50%)/g' \
	$@
