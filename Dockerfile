FROM docker.io/antora/antora:3.1.10

RUN yarn global add asciidoctor-kroki@0.18.1
RUN yarn global add asciidoctor-emoji@0.5.0
RUN yarn global add @antora/lunr-extension@1.0.0-alpha.10
#RUN yarn global add @djencks/asciidoctor-mathjax@0.0.9
