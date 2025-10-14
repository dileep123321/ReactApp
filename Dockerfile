# Use a lightweight Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies (faster & reliable)
RUN npm ci

# Copy app source
COPY . .

# Build the React app
RUN npm run build

# Expose app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
