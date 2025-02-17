#!/bin/bash

dir=~/dotfiles                    # dotfiles directory
files=".gitignore_global .gitconfig .githelpers git_completion.bash git_prompt.sh"    # list of files/folders to symlink in homedir

echo "Changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
	echo "Killing $file"
	rm -rf ~/$file
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/$file
done
