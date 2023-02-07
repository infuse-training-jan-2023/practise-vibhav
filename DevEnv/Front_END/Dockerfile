FROM node
COPY . /home/vibhav/Desktop/INFUSE/Docker/DevEnv
WORKDIR /home/vibhav/Desktop/INFUSE/Docker/DevEnv
COPY package*.json ./
RUN npm install
CMD [ "npm", "run", "start" ]
