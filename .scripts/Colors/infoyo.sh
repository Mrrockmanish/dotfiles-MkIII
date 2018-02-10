#!/usr/bin/env bash
# nrnl.sh - displays sys info
echo
# colors
f=3 b=4
for j in f b; do
	for i in {0..7}; do
		printf -v $j$i "%b" "\e[${!j}${i}m"
	done
done
bld=$'\e[1m'
rst=$'\e[0m'
inv=$'\e[7m'

# detect
user=$(whoami)
host=$(hostname)
kernel=$(uname -r)
kernel=${kernel%-*}
kernel=${kernel%_*}
shell=$(basename $SHELL)
os() {
	os=$(source /etc/os-release && echo $ID)
	export os
}

wm() {
	id=$(xprop -root -notype _NET_SUPPORTING_WM_CHECK)
	id=${id##* }
	wm=$(xprop -id "$id" -notype -len 100 -f _NET_WM_NAME 8t)
	wm=${wm/*_NET_WM_NAME = }
	wm=${wm/\"}
	wm=${wm/\"*}
	wm=${wm,,}
	export wm
}

init() {
	init=$(readlink /sbin/init)
	init=${init##*/}
	init=${init%%-*}
	export init
}

# exec
os
wm
init
cat <<EOF
┌───┐   os${f1}:${rst}          ${f7}$os${rst}
│   │   kernel${f1}:${rst}      ${f7}$kernel${rst}
│${f8}...${rst}│   shell${f1}:${rst}       ${f7}$shell${rst}
│   │   init${f1}:${rst}        ${f7}$init${rst}
└───┘   wm${f1}:${rst}          ${f7}$wm${rst}
EOF

 # optional blocks
if  [[ $1 = "-b" ]]; then
	pcs() { for i in {0..7}; do echo -en "\e[${1}$((30+$i))m \u2588\u2588 \e[0m"; done; }
	printf "\n%s\n%s\n\n" "$(pcs)" "$(pcs '1;')"
else
	:
fi

echo -e "\n"

for i in {0..7}; do echo -en "\e[$((30+$i))m ${colors[i]} \u2588\u2588 \e[0m"; done

echo -e "\n"
echo