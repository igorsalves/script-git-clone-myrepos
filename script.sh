#!/bin/bash

mkdir repositorios-git
cd repositorios-git

repositorios = $(curl -s https://api.github.com/users/igorsalves/repos | awk '/ssh_url/{print $2}' | sed 's/^"//g' | sed 's/",$//g')

for repositorio in $repositorios
do
    git clone $repositorio
done