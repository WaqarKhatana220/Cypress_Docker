FROM ubuntu

RUN apt-get update && apt-get -y upgrade &&\ 
apt install -y nodejs && apt install -y npm

RUN npm install cypress 
#RUN apt install -y libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb

COPY ./package.json .
COPY ./cypress.json .
COPY ./cypress ./cypress
# ENTRYPOINT [ "npx", "cypress", "-v" ]

# CMD [""]