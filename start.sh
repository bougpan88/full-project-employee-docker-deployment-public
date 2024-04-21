docker-compose down
docker container rm -f postgres_custom_db
docker container rm -f backend_spring_boot
docker container rm -f frontend_angular_nginx
docker volume rm postgresMyvolume
docker volume create postgresMyvolume
docker-compose build
docker-compose up -d 