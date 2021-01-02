# Бот аниспамер
## Как установить и запустить
Установка  docker, если его нет.
```
sudo apt install docker.io
sudo apt install docker-compose
```
```
git push pull https://github.com/MihailPy/chatAdmin.git
```
Теперь нужно отредактировть два файла.

Файл db/createdb.sql изменить mysqlrootpassword на любые пароли лучше сложнее.

Запомнить пароль для root.

Тепреь файл docker-compose.yml и изменить mysqlrootpassword на пароль созданый для root.

И также нужно изменить admin_id на ваш id.
Перед запуском лучше написать боту любое сообщение что бы у бота уже был чат с вашим id.
И теперь собираем и запускаем бота.
```
sudo docker-compose build
sudo docker-compose up -d
```
Бот должен написать вам что запущен.
