#!/bin/bash
if [ ${EUID:-${UID}} = 0  ];then
	#GIT
	apt update
	apt upgrade -y
	apt install -y git
	# Virtual Box guest addition tools
	apt install -y vim gcc make perl python3-pip
	
	# Available Japanese
	mozc-utils-gui fcitx-config-gtk
	
	# vscode: https://code.visualstudio.com/docs/setup/linux
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
	install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
	sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
	rm -f packages.microsoft.gpg
	apt install apt-transport-https
	apt update
	apt install -y code

fi
