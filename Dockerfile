FROM node:10
LABEL maintainer="Trinh Phuoc Thai <tphuocthai@gmail.com>"

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 3000
CMD ["npm", "start", "--bind", "0.0.0.0:$PORT"]
