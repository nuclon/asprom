.PHONY: all build test

all: build test

build:
	go build -i

test:
	go test

docker:
	docker build -t nuclon/asprom .
	docker push nuclon/asprom
