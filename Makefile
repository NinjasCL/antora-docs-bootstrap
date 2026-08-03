.PHONY: install build server sh antora.build
BUILD=docker
CONTAINER_LABEL=local/antora:example-docs

install i:
	${BUILD} build -t ${CONTAINER_LABEL} .

build b:
	${BUILD} run -v .:/antora:z --rm --entrypoint /bin/sh ${CONTAINER_LABEL} -c \"rm -rf /antora/docs && antora antora-playbook.yml --stacktrace && touch /antora/docs/.nojekyll && chown -R $(id -u):$(id -g) /antora/docs\"

server s:
	@cd docs && python3 -m http.server

shell sh:
	${BUILD} run -it --entrypoint /bin/sh -v .:/antora:z -t ${CONTAINER_LABEL}

antora.build ab:
	antora antora-playbook.yml --stacktrace
