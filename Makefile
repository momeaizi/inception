all: up


up:
	mkdir -p /home/momeaizi/data/wordpress
	mkdir -p /home/momeaizi/data/mariadb
	mkdir -p /home/momeaizi/data/redis
	docker compose -f ./srcs/docker-compose.yml up &

down:
	docker compose -f ./srcs/docker-compose.yml down

clean:
	docker compose -f ./srcs/docker-compose.yml down --volumes --rmi all
	rm -rf /home/momeaizi/data/*


re: fclean all
