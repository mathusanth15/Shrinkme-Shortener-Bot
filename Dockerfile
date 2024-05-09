FROM node:lts-buster

RUN git clone https://github.com/mathusanth15/Shrinkme-Shortener-Bot/ /root/Leyon

WORKDIR /root/Leyon

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN npm install


CMD ["npm", "start"]
