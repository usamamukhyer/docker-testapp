
FROM node

# Set environment variables for MongoDB
ENV MONGO_DB_USERNAME=Admin \
    MONGO_DB_PWD=qwerty

# Create a directory for the app and set it as the working directory
RUN mkdir -p /myapp
WORKDIR /myapp

# Copy only package.json and install dependencies (for caching efficiency)
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port (make sure this matches the one in server.js)
EXPOSE 5050

# Start the Node.js application
CMD ["node", "server.js"]





# FROM node

# # Set environment variables for MongoDB
# ENV MONGO_DB_USERNAME=Admin \
#     MONGO_DB_PWD=qwerty

# # Create a directory for the app and set it as the working directory
# RUN mkdir -p /testapp
# WORKDIR /testapp

# # Copy only package.json and install dependencies (for caching efficiency)
# COPY package.json package-lock.json ./
# RUN npm install

# # Copy the rest of the application files
# COPY . .

# # Start the Node.js application
# CMD ["node", "server.js"]



# # Use official Node.js image
# FROM node

# # Set environment variables for MongoDB
# ENV MONGO_DB_USERNAME=Admin \
#     MONGO_DB_PWD=qwerty

# # Set working directory inside the container
# WORKDIR /testapp

# # Copy package.json and install dependencies first (for caching efficiency)
# COPY package.json package-lock.json ./
# RUN npm install

# # Copy the rest of the app
# COPY . .

# # Expose the application port (make sure this matches the one in your server.js)
# EXPOSE 5050

# # Start the Node.js application
# CMD ["node", "server.js"]
