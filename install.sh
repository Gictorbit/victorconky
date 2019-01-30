#!/bin/sh

echo "hello"
echo "welcom to installing victorConky..."

if [ ! -d ~/.conky ];then
        echo "There is no .conky directory in home..."
        echo "making directory .conky..."
        mkdir .conky 
fi      
echo "directory <<~/.conky>> Found..."
    
if [ -d victorConky ];then
        echo "victorConky directory Found..."
        echo "copying Files..."
        sleep 2
        mkdir ~/.conky/victorConky 
        cp -r victorConky ~/.conky/victorConky

        if [ -d fonts ];then
                echo "font directory Found..."
                if [ ! -d ~/.fonts ];then
                    mkdir ~/.fonts
                fi    
                echo "installing fonts..."
                ls fonts | xargs -IX cp fonts/X ~/.fonts
            else
                echo "font directory notFound..."
                echo "visit https://www.github.com/Vict0rBit and download it..."
                exit
        fi
        echo "all files copy successfully..."
        echo "would you open conky manager? [y,N]"
        read answer
        if [ "$answer" == "y" || "$answer" == "Y" ];then
            conky-manager
        fi
        exit
    else
        echo "victorConky directory NotFound..."
        echo "visit https://www.github.com/Vict0rBit and download it..."
        exit    
fi        

