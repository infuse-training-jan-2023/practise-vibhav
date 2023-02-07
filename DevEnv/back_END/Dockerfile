FROM node
COPY . home/vibhav/Desktop/INFUSE/Docker/DevEnv/back_END
WORKDIR home/vibhav/Desktop/INFUSE/Docker/DevEnv/back_END
COPY package*.json ./
RUN npm install
RUN npm install -g nodemon 
CMD nodemon server.js
