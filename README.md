https://www.youtube.com/watch?v=oeRigQcA6GA

docker ps - показывает список запущеных контейнеров

docker ps a  - показывает список установленных контейнеров

docker images - список образов которые подтянуты с докер хаба

docker volume ls - показывает список вольюмов. Вольюм может хранить например БД

docker network ls - показывает список сетей

docker build -t name_cont . -запускает сборку образа докер контейнера из файла Dockerfile лежащего в этом же каталоге. Можно вместо . указать путь к файлу.

docker run image - запуск образа

docker run -d cont_name - запуск образа как демон

docker stop cont_name - остановка образа

docker exec -i -t 6ee6223a3ce3 bash - поключение к докер контейнеру

docker exec -it mycontainer /bin/sh - Подключиться к командной оболочке работающего контейнера

docker run -it myapp /bin/sh - Запустить оболочку в качестве команды контейнера

https://devacademy.ru/article/kak-udalit-obrazy-kontieiniery-i-toma-docker

sudo docker rmi $(sudo docker images -a -q) - удаление всех образов

docker rm $(docker ps -a -f status=exited -q) - удаление всех закрытых контейнеров



