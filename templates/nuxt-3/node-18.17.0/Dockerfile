it pu# Base image for production
FROM node:18.17.0-alpine3.18

# Directory for nestjs
WORKDIR /usr/src/nuxt3

# Nestj version 10  and Nx must be copied to work directory 
COPY package.json .

# Install all defined npm package dependencies
RUN npm install

# Copy the file to the same work directory
COPY docker-entrypoint.sh /usr/local/bin/

# Give execution permission
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Sets the default command when running a Docker container at startup
ENTRYPOINT ["docker-entrypoint.sh"]