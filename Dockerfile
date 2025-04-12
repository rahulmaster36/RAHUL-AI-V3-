FROM node:lts-buster
RUN git clone https://github.com/rahulmaster36/RAHUL-AI-V3/root/ikrahulmaster36
WORKDIR /root/ikrahulmaster36
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
