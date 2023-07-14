# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Copy the entire project to the working directory
COPY . .

# Build the Angular project
RUN ng build --prod

# Set up a simple HTTP server to serve the built Angular app
RUN npm install -g http-server

# Set the command to start the server when the container starts
CMD ["http-server", "dist/r-ventory-web-ui"]
