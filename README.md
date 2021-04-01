# pkgbuilds_for_nativefier

Это пакеты для `nativefier`, но не хочу их размещать в AUR, потому что некоторые из них конфликтуют с существующими названиями. А те приложения либо не работают, либо криво работают. Да и в принципе не хочется брать на себя поддержание пакетов, мне главное получить их для себя.

А чтобы `yay` случайно не обновлял пакеты (если у них будут одинаковые названия) или я не забыл, что они мои — в названии пакета в конце ставлю `by-morion`

# Как собирать
Если нужно отдельный пакет, то заходишь в нужную директорию и:
```sh
    makepkg -c -f -i --noconfirm
```

А если нужны все пакеты, то есть скрипт `build_all.sh`

# Версионность
Я всегда использую 1-1 (версия 1, номер сборки 1).
Так как я никуда не выкладывают эти пакеты, мне без разницы на эту версию. Если я буду что-то менять, я просто буду переустанавливать их и все, пофиг на номер версии.

# Пересборка
По идее, переодически эти пакеты надо пересобирать, чтобы для сборки всегда использовалась актуальная версия `nativefier`. От этого зависит, какой внутри electron и какой движок хрома. Чем актуальнее, тем лучше.
Можно подумать над тем, чтобы запускать скрипт `build_all.sh` через `anacron`. Настроить интервал, допустим раз в месяц. И пусть фоново пересобирается сам, мне даже следить за этим не придется.

Я где-то читал, что через 60 дней после сборки браузер должен выдавать предупреждения. Посмотрим, так ли это.

# Electron-version
В билдах я указываю конкретную версию электрона, потому что я [удаляю главное меню](https://github.com/nativefier/nativefier/pull/58). Если не указывать конкретную версию, я предполагаю что со временем код может поменяться и нужно будет вставлять мой код под удалению главного меню в другую строчку.

Поэтому можно раз в несколько месяцев проверять 
[новые версии  electron](https://www.electronjs.org/releases/stable). Если вышла новая версия — проверять работоспособность моего патча и обновлять версию в PKGBUILD-ах