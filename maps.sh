#!/bin/bash
set -e

cd $HOME/tf/maps

maps=()

for map in ${maps[@]}; do
	wget -nv "http://fakkelbrigade.eu/maps/$map.bsp"
done
