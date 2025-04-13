#!/bin/bash

# make all .sh files executable in this directory!
bashrcDirectory="$HOME/.bashrc"
zshrcDirectory="$HOME/.zshrc"

echo "Choose an alias name:"
read aliasName
echo "Your choice is: $aliasName"

[ -f $bashrcDirectory ] || { echo "$bashrcDirectory doesn't exist"; exit 1; }
isNewAliasNameExistsInBashrc=`grep "^alias $aliasName=" "$bashrcDirectory"`
[ -n "$isNewAliasNameExistsInBashrc" ] && echo "This alias name exists in your bashrc!" && exit 1

echo "alias $aliasName=\"~/.gitty/gitty.sh\"" >> $bashrcDirectory
echo "New alias set successfully. Run \"source ~/.bashrc\" or open new terminal"
