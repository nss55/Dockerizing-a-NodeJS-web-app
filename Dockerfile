FROM node:10

# Create app directory
WORKDIR /usr/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for productio
# RUN npm ci --only=productio

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
