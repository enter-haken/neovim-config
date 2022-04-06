.PHONY: build logs exec down clean

build:
	docker compose up -d 

logs:
	docker logs -tf devbox

down:
	docker compose down

clean:
	docker compose down --rmi all --volumes --remove-orphans

exec:
	docker exec -it devbox /bin/bash
