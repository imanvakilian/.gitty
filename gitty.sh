#!/bin/bash

[ -z $1 ] && echo "Bad input: gitty <command>" && exit 1;

commandFile="$HOME/.gitty/$1.sh"

[ -f $commandFile ] || { echo "\"$1\" doesn't a command in gitty"; exit 1; }

