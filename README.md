Разработка продолжается в данном репозитории | Development continues in this repository: https://github.com/zerolabnet/ultimate-antifilter

<h1 align="center">
 <img
  width="300"
  alt="logo"
  src="https://raw.githubusercontent.com/zerolabnet/clash-antifilter-lists/main/docs/logo.png">
    <br/>
    Clash Antifilter Lists
</h1>

### Описание

Абсолютно минималистичный образ комплекса для создания пользовательских правил для обхода блокировок через веб-интерфейс в форматах для Clash и Shadowrocket. А так же полный и актуальный список IP-адресов, запрещенных на территории РФ с автоматическим обновлением (берется с сервиса antifilter.download и конвертируется в вышеперечисленные форматы). При первом запуске контейнера автоматически генерируется пароль для доступа в админ-панель.

<p align="center">
 <img src="https://raw.githubusercontent.com/zerolabnet/clash-antifilter-lists/main/docs/01-scr.png" width="100%">
</p>

### Установка, используя docker

```bash
docker run -d \
--name clash-antifilter-lists \
--restart=unless-stopped \
-p 8080:8080/tcp \
zerolabnet/clash-antifilter-lists:latest
```

### Порты по умолчанию

```
8080 - порт веб-сервера для доступа в админ-панель
```
Переопределите по своему усмотрению.

### Пароль для авторизации в админ-панеле

После первого запуска смотрим лог контейнера, в нем вы найдете пароль для авторизации `Your login password:`.

```bash
docker logs clash-antifilter-lists
```

### Формат правил:

```
DOMAIN-SUFFIX,google.com
DOMAIN-KEYWORD,google
DOMAIN,ad.com
SRC-IP-CIDR,192.168.1.201/32
IP-CIDR,127.0.0.1/8
IP-CIDR6,2620:0:2d0:200::7/32
GEOIP,CN
DST-PORT,80
SRT-PORT,7777
```

### Заходим в админ-панель и прописываем правила:

http://YOUR_IP:8080

### Ссылки на правила

Внизу страницы будут ссылки на ваш пользовательский лист правил и на лист с IP-адресами, запрещенными на территории РФ.
