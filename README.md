https://www.youtube.com/watch?v=oeRigQcA6GA

docker ps - показывает список запущеных контейнеров

docker ps a  - показывает список установленных контейнеров

docker images - список образов которые подтянуты с докер хаба

docker volume ls - показывает список вольюмов. Вольюм может хранить например БД

docker network ls - показывает список сетей

docker build -t name_cont . -запускает сборку образа докер контейнера из файла Dockerfile лежащего в этом же каталоге. Можно вместо . указать путь к файлу.

docker images - просмотр образов

docker run image - запуск образа

docker run -d cont_name - запуск образа как демон

docker stop cont_name - остановка образа

docker exec -i -t 6ee6223a3ce3 bash - поключение к докер контейнеру
