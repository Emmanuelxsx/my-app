# Use the official Node.js image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app will run on (this should match the port in your app)
EXPOSE 80

# Run the application
CMD ["npm", "start"]
