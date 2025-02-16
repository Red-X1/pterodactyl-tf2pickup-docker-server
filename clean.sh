#! /bin/bash 

ls -l $HOME
cd $HOME/tf/maps

mv cp_badlands.{bsp,keep}
rm *.bsp
mv cp_badlands.{keep,bsp}

cd $HOME/tf

rm resource/tf_*.txt
