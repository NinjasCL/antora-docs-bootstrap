FROM docker.io/antora/antora:3.1.14

# We have yarn.tar.gz with all these deps
# This was needed because javascript dependencies tend to rot with time
# So we have static deps that works for this specific antora version
# To create this file
# 1. open instance with make sh
# 2. cd /usr/local/share/.config/yarn/global
# 3. create tar file: tar -czvf yarn.tar.gz .
# 4. move file to antora dir: mv yarn.tar.gz /antora

COPY ./yarn.tar.gz /usr/local/share/.config/yarn/global
RUN tar -xzvf /usr/local/share/.config/yarn/global/yarn.tar.gz -C /usr/local/share/.config/yarn/global
RUN rm /usr/local/share/.config/yarn/global/yarn.tar.gz

# PDF and Epub Export
# Enable if desired

# RUN apk add ruby ruby-dev build-base
# RUN gem install bundler rouge
# RUN gem install asciidoctor asciidoctor-pdf
# RUN gem install asciidoctor-epub3
# RUN gem install asciidoctor-pdf-mathjax

# Other Math Engines

# Asciimath
# RUN gem install asciimath

# Mathematical
# RUN apk add cmake bison flex python3 glib glib-dev cairo cairo-dev pango pango-dev gdk-pixbuf gdk-pixbuf-dev libxml2 libxml2-dev
# RUN gem install asciidoctor-mathematical

# Update to the same antora version as docker if needed
#RUN yarn global add @antora/cli@3.1.14 @antora/site-generator@3.1.14

# You can install deps manually if you want
#RUN yarn global add @asciidoctor/core@3.0.4
#RUN yarn global add asciidoctor-kroki@0.18.1
#RUN yarn global add asciidoctor-emoji@0.5.0
#RUN yarn global add @antora/lunr-extension@1.0.0-alpha.10
#RUN yarn global add @djencks/asciidoctor-mathjax@0.0.9
#RUN yarn global add @antora/pdf-extension@1.0.0-beta.20
#RUN yarn global add @antora/epub-extension@1.0.0-beta.20