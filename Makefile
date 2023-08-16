all:
	docker compose -f ./srcs/docker-compose.yml up &

clean:
	docker compose -f ./srcs/docker-compose.yml down

fclean:
	docker compose -f ./srcs/docker-compose.yml down --volumes --rmi all


re: fclean all