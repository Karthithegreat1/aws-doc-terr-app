# Use official Node.js image
FROM node:14

# Create app directory
WORKDIR /app

# Install app dependencies
COPY app/package*.json ./
RUN npm install

# Copy the app code
COPY app/. .  # Copy all files in the 'app' directory

# Expose the port the app will run on
EXPOSE 8080

# Start the app
CMD ["node", "app.js"]
