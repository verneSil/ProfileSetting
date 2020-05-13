currentDir=`pwd`
cd ..
cd ..
file=`ls ~/.git-credentials`
if  [ -n $file ]; then
	echo "file ~/.git-credentials exist,creat new?[Y/N]"
	while [ 1==1 ]
	do
		read create
		if  [[ $create == "Y" || $create == "yes" ]];then 
			echo "your username?->"
			read git_username
			echo "your passwd?->"
			read git_passwd
			rm -rf ~/.git-credentials
			echo 'https://{$git_username}:{$git_passwd}@github.com' > ~/.git-credentials
			break 2
		elif [[ $create == "N" || $create == "no" ]];then
			echo "will not init git..."
			break 2
		else 
			continue
		fi
	done	
else
	echo "your username?"
	read git_username
	echo "your passwd?"
	read git_passwd
	echo 'https://{$git_username}:{$git_passwd}@github.com' > ~/.git-credentials
fi
git config --global credential.helper store
echo init Git finish ...
