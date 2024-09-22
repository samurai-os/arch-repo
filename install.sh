#!/bin/bash

if grep -q devteam-repo-git /etc/pacman.conf; then
	echo 'DevTeam repo for SamuraiOS Linux have been find'
	echo 'If you haven't added the repository, check the file /etc/pacman.conf'
	exit
fi

echo '
[devteam-repo-git]
SigLevel = Optional
Server = https://github.com/samurai-os/$repo/raw/refs/heads/main/$arch
' >> /etc/pacman.conf
