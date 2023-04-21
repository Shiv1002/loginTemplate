FROM node:latest
WORKDIR /app
COPY index.html /app
RUN npm install -g http-server
CMD ["http-server", "-p", "8080"]
