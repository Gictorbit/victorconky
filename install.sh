#!/usr/bin/env bash

function main(){
    conkyPath="$HOME/.conky"
    victorConky="$HOME/.conky/victorConky"
    
    createDirs
    copyFiles
    installFonts

}

function createDirs(){
    #create conky dir if not exist
    mkdir -p "$conkyPath"

    #create victorConky dir if not exist and delete it if exist
    if [[ -d "$victorConky" ]];then
        rm -rf "$victorConky"
        echo "victorConky directory is already exists deleting..."
    fi
    echo "create $victorConky..."
    mkdir "$victorConky"
}

function copyFiles(){
    filesDir="$PWD/victorConky"
    
    if [[ -d "$filesDir" ]];then
        echo "copy files..."
        cp "$filesDir"/* "$victorConky"
    else
        echo "victorConky dir not Found"
        echo "visit https://www.github.com/Gictorbit/victorconky and download it"
        exit 1
    fi
}

function installFonts(){
    conkyFonts="$PWD/fonts"
    fontDir="$HOME/.fonts"

    mkdir -p "$fontDir"

    if [[ -d "$conkyFonts" ]];then
        echo "install fonts..."
        cp "$conkyFonts"/* "$fontDir"
    else
        echo "fonts directory not Found"
        echo "visit https://www.github.com/Gictorbit/victorconky and download it"
        exit 1
    fi
}

main

