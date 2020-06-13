#!/bin/bash

#List all files that are to track 
declare -a folders=(
			~/.config/vlc
			~/.config/zathura
			~/.config/tilda
			~/.config/compton
		)

declare -a files=(
			~/.Xresources
			~/.zshrc
			~/.xinitrc
			~/manageDotfiles.sh
			~/.bashrc
			~/.vimrc
		) 

# Loop over file track changes  and add them
for i in "${files[@]}"
do
	echo -e "\e[91m\c"

	cp $i .
done

echo -e "\e[0m"

cd ./.config

for i in "${folders[@]}"
do
	echo -e "\e[91m\c"

	cp -r $i .
done

echo -e "\e[0m"



