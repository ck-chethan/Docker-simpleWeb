# Specify base image
FROM node:alpine
WORKDIR /usr/app

# Install some dependencies
# Copy from workspace to container directory since packet.json is not available in docker
COPY ./ ./
RUN npm install

# Default command
CMD ["npm", "start"]