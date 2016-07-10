
requirements.txt: .built.docker requirements.in
	$(MAKE) requirements

requirements:
	docker run --rm -it -v "$(CURDIR):/src" pip-tools

.built.docker: Dockerfile
	$(MAKE) build
	touch .built.docker

build:
	docker build --rm -t pip-tools .
