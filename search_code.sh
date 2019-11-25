#!/bin/zsh

# オプションでファイル指定とかもできたらいいかも
if [ $# == 1 ]; then
    rg --context 3 $1 ~/Programming/CodingMemo/ 
elif [ $# == 2 ]; then
    rg --context 3 $1 ~/Programming/CodingMemo | rg --context 3 $2
elif [ $# == 3 ]; then
    rg --context 3 $1 ~/Programming/CodingMemo | rg --context 3 $2 | rg --context 3 $3
fi
