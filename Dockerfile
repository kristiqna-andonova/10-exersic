# Use the official Node.js image as the base image
# Use the official Node.js image as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (or yarn.lock) files first to leverage caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port the app will run on
EXPOSE 8080

# Define environment variable if needed
ENV NODE_ENV=production

# Run the app when the container starts
CMD ["npm", "start"]

