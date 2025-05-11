# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the app
COPY . .

# Expose port (optional, only needed if your app listens on a port)
# EXPOSE 3000

# Command to run the app
CMD [ "node", "app.js" ]
