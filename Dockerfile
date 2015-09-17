#
# node-demo Dockerfile
#
# https://hub.docker.com/r/aerodame/armhf-nodejs
#

# Pull base image.
FROM node 

# Bundle our app files source into /usr/app
RUN mkdir -p /usr/app
COPY  . /usr/app

# VOLUME .:/usr/app

# Install app dependencies
RUN cd /usr/app; npm install

EXPOSE  8080

# runtime => 'node', and the path to our app
CMD ["node","/usr/app/index.js"]
