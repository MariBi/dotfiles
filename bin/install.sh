#!/bin/bash

DOTFILES_SOURCE=`pwd`/../config/;                                                                                                                                                                                                
cd $DOTFILES_SOURCE;      

function linkDotfile {
   source=$DOTFILES_SOURCE$1;
   destination=~/$1;
   backup=../backup/$1;

   if [ ! -e "../backup"  ];then
   	mkdir ../backup;
   fi
   if [ -h "$destination" ];then
        rm $destination;
   fi

   if [ -e "$destination" ];then
         cp $destination $backup;
         rm $destination
   fi
   ln -s $source $destination;
   echo $destination;
}

wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | bash;

echo 'Copy dotfiles';
for dotfile in `find .  -type f `; do
    linkDotfile $dotfile;
done
