# Use the official Node.js image as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (or yarn.lock) files
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Command to run the app
CMD ["npm", "start"]
