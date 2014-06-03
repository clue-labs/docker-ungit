FROM ubuntu
MAINTAINER Christian Lück <christian@lueck.tv>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
	nodejs nodejs-legacy npm \
	git

RUN sudo -H npm install -g ungit

WORKDIR /git
EXPOSE 8080
ENTRYPOINT ["ungit", "--port", "8080"]
