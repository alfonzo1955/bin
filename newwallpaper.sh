#!/bin/bash

shopt -s nullglob

for i in ~/.i3/wallpapers/*
do
	[[ -f $i ]] && files+=("$i")
done
range=${#files[@]}
((range)) && feh --bg-fill "${files[RANDOM % range]}"
