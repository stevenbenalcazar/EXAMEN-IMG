FROM node:14-alpine

# Install git to clone the repo
RUN apk add --no-cache git

# Clone your GitHub repository
RUN git clone https://github.com/stevenbenalcazar/EXAMEN-IMG.git /app

# Set the working directory
WORKDIR /app

# Expose port
EXPOSE 8080

# Run your app (adjust if needed)
CMD ["npm", "start"]