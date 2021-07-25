if [ ! -e ~/.ssh/id_ed25519 ];then
	mkdir -pm 700 ~/.ssh
	ssh-keygen -t ed25519 -N "" -f ~/.ssh/id_25519 -C "`hostname`-`whoami`"
fi
