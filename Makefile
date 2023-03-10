all: build run

build:
	docker build -f ./Dockerfile --tag="php-parallel-docker:latest" .

run:
	docker run -it php-parallel-docker:latest
