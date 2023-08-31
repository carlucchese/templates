# Base image for production
FROM node:20.5.0-alpine3.18
# Dependencies for Prisma
RUN apk add --update --no-cache openssl1.1-compat
RUN apk add --no-cache libgcc libstdc++ libssl1.1
# Directory for nestjs
WORKDIR /usr/src/nestjs
# Nestj version 10  and Nx must be copied to work directory 
COPY package.json .
# Install all defined npm package dependencies
RUN npm i && npm i -g @nestjs/cli && npm i -g nx
# Copy the file to the same work directory
COPY docker-entrypoint.sh /usr/local/bin/
# Give execution permission
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
# Sets the default command when running a Docker container at startup
ENTRYPOINT ["docker-entrypoint.sh"]