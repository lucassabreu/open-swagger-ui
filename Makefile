all: build

IMAGE=ghcr.io/lucassabreu/open-swagger-ui
TAG=$(shell git branch | grep \* | cut -d ' ' -f2)

build:
	docker build . -t $(IMAGE):$(TAG)

push: build
	docker push $(IMAGE):$(TAG)

