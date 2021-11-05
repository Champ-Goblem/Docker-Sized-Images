image=champgoblem/sized-image

.PHONY: all

all: 256 512 1024


256:
	docker build --build-arg BS=2M ./ -f builder.dockerfile -t "${image}:256m"
	docker push "${image}:256m"

512:
	docker build --build-arg BS=5M ./ -f builder.dockerfile -t "${image}:512m"
	docker push "${image}:512m"

1024:
	docker build --build-arg BS=10M ./ -f builder.dockerfile -t "${image}:1024m"
	docker push "${image}:1024m"
