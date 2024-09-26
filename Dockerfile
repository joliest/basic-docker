# specify the base image
FROM node:14-alpine

# /usr/app will be created automatically
# /usr is a safe place to put our app
WORKDIR /usr/app

# Install dependency
# The only time `npm install will run when you make changes in any steps above it or in package.json
ADD ./package.json ./
RUN npm install

ADD ./ ./

# Default Command
CMD ["npm", "start"]