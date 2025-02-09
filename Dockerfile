# Use the official Node.js 14 image as a parent image
# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory inside the container to /app
WORKDIR /app

# Copy package.json and package-lock.json separately to leverage caching
COPY package.json package-lock.json ./

# Install dependencies in the container
RUN npm install

# Copy the rest of the app's source code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 3030

# Define the command to run the app
CMD [ "npm", "start" ]
