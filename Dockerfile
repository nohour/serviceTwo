FROM ubuntu:16.04

MAINTAINER vadim


# Install Node...
RUN \
	apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install nodejs && \
	ln -s /usr/bin/nodejs /usr/bin/node
	
# Copy app to /src
COPY . /src

# Install app and dependencies into /src


EXPOSE 3000

CMD cd /src && node ./server.js
