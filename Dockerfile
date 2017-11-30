FROM ubuntu:16.04

MAINTAINER vadim


# Install Node...
RUN \
	apt-get update && \
	apt-get -y upgrade && \
	apt-install nodejs && \
	ln -s "$(which nodejs)" /usr/bin/node
	
# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install

EXPOSE 3000

CMD cd /src && node ./server.js
