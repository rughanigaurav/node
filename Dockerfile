# Use the official Node.js image
FROM node:18

# Create and change to the app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Bind to the port the app will run on
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
