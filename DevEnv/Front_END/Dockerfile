FROM node
COPY . /home/vibhav/Desktop/INFUSE/Docker/rubyTest
WORKDIR /home/vibhav/Desktop/INFUSE/Docker/rubyTest
COPY package*.json ./
RUN npm install
CMD [ "npm", "run", "start" ]
