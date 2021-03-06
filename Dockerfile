FROM debian:jessie

MAINTAINER @sleepyfox <sleepyfox@gmail.com>

RUN apt-get update
RUN apt-get install -y curl emacs24-nox
RUN curl http://racket.infogroep.be/6.3/racket-6.3-x86_64-linux-debian-squeeze.sh >install.sh
RUN bash install.sh
ENV PATH /usr/racket/bin:$PATH

WORKDIR /var/app
CMD ["racket"]
