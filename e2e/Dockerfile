FROM cypress/included:12.8.1

WORKDIR /cypress
COPY ./cypress ./

RUN npm install

ENTRYPOINT ["npm", "run", "test"]