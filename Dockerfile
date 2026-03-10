# Use official Node.js LTS image
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy package files first (for better caching)
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy rest of the project
COPY . .

# Expose app port
EXPOSE 5000

# Start app
CMD ["npm", "run", "dev"]