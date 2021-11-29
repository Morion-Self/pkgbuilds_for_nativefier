#!/bin/bash

# 1. Заходим в каждую папку по очереди
# 2. Собираем пакет
# 3. Устанавливаем его
# 4. Удаляем исходник

for dir in ./*/
do
    dir=${dir%*/}
    cd $dir
    if [ -f PKGBUILD ]; then
        makepkg -c -f -i --noconfirm
        rm *.pkg.tar.zst
    fi;
    cd ..
done