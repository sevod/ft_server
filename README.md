https://habr.com/ru/company/flant/blog/336654/ - шпаргалка

uname -a версия линукс

https://www.youtube.com/watch?v=oeRigQcA6GA

docker ps - показывает список запущеных контейнеров

docker ps a  - показывает список установленных контейнеров

docker images - список образов которые подтянуты с докер хаба

docker volume ls - показывает список вольюмов. Вольюм может хранить например БД

docker network ls - показывает список сетей

docker build -t name_cont . -запускает сборку образа докер контейнера из файла Dockerfile лежащего в этом же каталоге. Можно вместо . указать путь к файлу.

docker run image - запуск образа

docker run -d image_name - запуск образа как демон

docker  run --name cont_name -itd -p 80:80 image_name - запуск образа как демон с проброшенным портом 80 и нормальным именем

docker rename infinite infinity - переимеование контейнера

docker stop cont_name - остановка контейнера

docker start cont_name - запуск остановленного контейнера

docker restart cont_name - перезагрузка контейнера

docker pause cont_name - пауза контейнера

docker unpause cont_name - снять с паузы контейнер

docker exec -it 6ee6223a3ce3 bash - поключение к докер контейнеру

docker exec -it mycontainer /bin/sh - Подключиться к командной оболочке работающего контейнера

docker run -it myapp /bin/sh - Запустить оболочку в качестве команды контейнера



https://devacademy.ru/article/kak-udalit-obrazy-kontieiniery-i-toma-docker

sudo docker rmi $(sudo docker images -a -q) - удаление всех образов

docker rm $(docker ps -a -f status=exited -q) - удаление всех закрытых контейнеров

старт нескольких контейнеров
https://docs.docker.com/config/containers/multi-service_container/



