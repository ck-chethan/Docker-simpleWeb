# Specify base image
FROM node:alpine
WORKDIR /usr/app

# Install some dependencies
# Copy from workspace to container directory since packet.json is not available in docker
# Avoiding the reinstallation of dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]


# Build command
# docker build -t chethan/simpleweb .
# docker run chethan/simpleweb 
# This will run the docker image but it won't specify the host
# docker run -p 8080:8080 chethan/simpleweb
# The above command will assign the src and dest port to docker

# docker run -it chethan/simpleweb sh
# Command to open the shell
# docker exec -it b6c1186eb4cf sh
