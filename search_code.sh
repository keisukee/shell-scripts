#!/bin/zsh

# オプションでファイル指定とかもできたらいいかも
if [ $# == 1 ]; then
    cat ~/Programming/CodingMemo/* | rg --context 3 $1
elif [ $# == 2 ]; then
    cat ~/Programming/CodingMemo/* | rg --context 3 $1 | rg --context 3 $2
elif [ $# == 3 ]; then
    cat ~/Programming/CodingMemo/* | rg --context 3 $1 | rg --context 3 $2 | rg --context 3 $3
fi