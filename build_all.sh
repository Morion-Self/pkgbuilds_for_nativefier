#!/bin/bash

# 1. Заходим в каждую папку по очереди
# 2. Собираем пакет
# 3. Устанавливаем его
# 4. Удаляем исходник

for dir in ./*/
do
    dir=${dir%*/}
    cd $dir
    makepkg -c -f
    sudo pacman -U --noconfirm *.pkg.tar.zst
    rm *.pkg.tar.zst
    cd ..
done