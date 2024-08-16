

build: 
	docker build --platform linux/amd64 -t pg_dump .
	docker tag pg_dump:latest jbronson29/pg_dump:latest
	docker push jbronson29/pg_dump:latest