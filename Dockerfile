FROM quay.io/jeffdean/node-alpine:latest
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
# add app
COPY . ./
# start app
CMD ["npm", "start"]

