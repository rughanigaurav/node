# Use the official Node.js image. https://hub.docker.com/_/node
FROM node:18

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
# A wildcard is used to ensure both package.json AND package-lock.json are copied.
# Copying this separately prevents re-running npm install on every code change.
COPY package*.json ./

# Install production dependencies.
RUN npm install

# Copy the source code into the container.
COPY . .

# Make port 3000 available to the world outside this container.
EXPOSE 3000

# Define environment variable.
ENV NODE_ENV production

# Run the web service on container startup.
CMD ["node", "index.js"]