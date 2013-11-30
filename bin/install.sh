#!/bin/bash

DOTFILES_SOURCE=`pwd`/../config/;                                                                                                                                                                                                
cd $DOTFILES_SOURCE;      

function linkDotfile {
   source=$DOTFILES_SOURCE$1;
   destination=~/$1;
   backup=../backup/$1;

   if [ -h "$destination" ];then
        rm $destination;
   fi

   if [ -e "$destination" ];then
         cp $destination $backup;
         rm $destination
   fi
   ln -s $source $destination;
}

for dotfile in `find -type f `; do
    linkDotfile $dotfile;
done
