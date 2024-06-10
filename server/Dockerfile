    # Use an official Node.js runtime as the base image
    FROM node:14

    # Set the working directory in the container
    WORKDIR /app

    # Copy package.json and package-lock.json to the working directory
    COPY package*.json ./

    # Install dependencies
    RUN npm install

    # Install PM2 globally
    RUN npm install -g pm2

    # Copy the rest of the application code to the working directory
    COPY . .

    # Expose a port for the application to listen on
    EXPOSE 8888

    # Define the command to run the application
CMD ["pm2-runtime", "start", "index.js"]