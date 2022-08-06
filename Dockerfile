FROM node:14

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

RUN apt-get update && apt-get install -yq gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget x11vnc x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic x11-apps xvfb
RUN apt-get install -yq google-chrome-stable
RUN apt-get install -yq git

# TODO: clone repository

# browser-extensions
RUN git clone https://github.com/PRO-OC/pro-oc.git
#RUN git clone https://github.com/PRO-OC/pro-oc-vzp-b2b.git
#RUN git clone https://github.com/PRO-OC/pro-oc-vzp-point.git
#RUN git clone https://github.com/PRO-OC/pro-oc-dzs.git
#RUN git clone https://github.com/PRO-OC/pro-oc-ag.git
#RUN git clone https://github.com/PRO-OC/pro-oc-pcr.git

COPY . .

RUN npm install

CMD npm test
