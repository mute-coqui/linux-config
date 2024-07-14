#!/bin/bash

if ! test -f ~/.ssh; 
then
	mkdir -p ~/.ssh
else
	echo "ssh directory exists"
fi 

if ! test -f ~/.ssh/github-linux-home && ! test -f ~/.ssh/github-linux-home.pub;
then
	if cp ~/linux-config/ansible/github-linux-home* ~/.ssh
	then
		echo "Ssh keys moved. Use ansible-vault to decrypt keys before adding to your ssh client"
	else
		echo "Copy error: $?"
		echo "Ssh keys failed to move. Manually move keys to their approrpriate location"
	fi
else
	echo "Ssh keys already added. Skipping..."
fi

# install packages via pacman (Arch linux only for now)
if ! test -f ./linux-config/packages.txt;
then
	echo "Packages list required to install."
	echo "Either create a packages.txt file or install your packages manually"
	exit 1
fi

sudo pacman -Rsu $(comm -23 <(pacman -Qq | sort) <(sort ./packages.txt))
