#!/bin/bash -x

declare -A sounds
sounds[dog bird cat]="bark tweet moo"
echo ${sounds[bird]} 
