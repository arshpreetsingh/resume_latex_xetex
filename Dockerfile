FROM amd64/debian
LABEL maintainer="Johannes Schickling <schickling.j@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

ADD install.sh install.sh
RUN sh install.sh && rm install.sh

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]
