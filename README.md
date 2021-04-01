# pkgbuilds_for_nativefier

Это пакеты для `nativefier`, но не хочу их размещать в AUR, потому что некоторые из них конфликтуют с существующими названиями. А те приложения либо не работают, либо криво работают. Да и в принципе не хочется брать на себя поддержание пакетов, мне главное получить их для себя.

А чтобы `yay` случайно не обновлял пакеты (если у них будут одинаковые названия) или я не забыл, что они мои — в названии пакета в конце ставлю `by-morion`

# Как собирать
Заходишь в каждую директорию по очереди и запускаешь:

```sh
    makepkg -c
    sudo pacman -U --noconfirm *.pkg.tar.zst
```

# Версионность
Я всегда использую 1-1 (версия 1, номер сборки 1).
Так как я никуда не выкладывают эти пакеты, мне без разницы на эту версию. Если я буду что-то менять, я просто буду переустанавливать их и все, пофиг на номер версии.

# Пересборка
По идее, переодически эти пакеты надо пересобирать, чтобы для сборки всегда использовалась актуальная версия `nativefier`. От этого зависит, какой внутри electron и какой движок хрома. Чем актуальнее, тем лучше.

Я где-то читал, что через 60 дней после сборки браузер должен выдавать предупреждения. Посмотрим, так ли это.

# TODO
нужно еще сделать, чтобы из приложений автоматом удалялось меню. как это сделать: https://github.com/nativefier/nativefier/pull/58. Нужно как-то это автоматизировать.
Возможно для этого придется указывать явно версию electron, вдруг от версии к версии что-то будет меняться. Пока хз кароч.

# Удалить, если будет ОК
В каждом файле PKGBUILD в параметрах `nativefier` еще была строка:

```--user-agent "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:70.0) Gecko/20100101 Firefox/70.0" \```

 Я ее пока убрал, вроде работает и без нее. Если и дальше будет ок, то можно будет удалить и этот коммент.