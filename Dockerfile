# Use the official Node.js image as the base image
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your application code
COPY . .

# Build the Svelte app
RUN npm run build

# Expose port 8080 (or whichever port your app uses)
EXPOSE 8080

# Start the app
CMD ["npm", "start"]