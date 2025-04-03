.PHONY: install build server
BUILD=podman
CONTAINER_LABEL=local/antora:example-docs

install i:
	${BUILD} build -t ${CONTAINER_LABEL} .

build b:
	@rm -rf docs/
	${BUILD} run -u $(id -u):$(id -g) -v .:/antora:z --rm -t ${CONTAINER_LABEL} antora-playbook.yml

server s:
	@make build
	@cd docs && python3 -m http.server
	