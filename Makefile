APP_NAME := rando
DOCKER_IMAGE := ikupczynski/rando:latest

.PHONY: all
all: build-local

.PHONY: build-local
build-local:
	go build -o $(APP_NAME) .

.PHONY: build-docker
build-docker:
	docker build -t $(DOCKER_IMAGE) .

.PHONY: run-docker
run-docker:
	docker run --rm $(DOCKER_IMAGE) $(ARGS)

.PHONY: push-docker
push-docker: build-docker
	docker push $(DOCKER_IMAGE)

.PHONY: clean
clean:
	rm -f $(APP_NAME)