# select node 16 alpine
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy json Packages in working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build the React app
RUN npm run build

# Expose the port your React app is listening on
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]