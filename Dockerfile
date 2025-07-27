# Use official Node.js image with Alpine Linux
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only package files first for caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app source code
COPY . .

# Expose React development server port
EXPOSE 3000

# Start the React app using the development server
CMD ["npm", "start"]

