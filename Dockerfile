FROM fusuf/badboy:latest

RUN git clone https://github.com/BADBMODER/Badboy /root/Badboy
WORKDIR /root/Badboy/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "main.js"]
