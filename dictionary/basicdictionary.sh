#!/bin/bash -x

declare -A sounds

sounds[captain]="bark"
sounds[plaffy]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "captian sound - " ${sounds[captain]}
echo "all animals - " ${!sounds[@]}
echo "number of animals - " ${#sounds[@]}
unset sounds[bird]
echo "after deleting - " ${!sounds[@]}
