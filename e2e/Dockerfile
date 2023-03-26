FROM cypress/browsers:node-18.14.1-chrome-111.0.5563.64-1-ff-111.0-edge-111.0.1661.43-1

WORKDIR /workdir
COPY ./ ./

RUN apt-get -y update; apt-get -y install curl

RUN npm install

ENTRYPOINT ["npm", "run", "test"]