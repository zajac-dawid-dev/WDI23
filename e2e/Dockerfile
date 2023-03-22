FROM cypress/included:12.8.1

WORKDIR /workdir
COPY ./ ./

RUN npm install

ENTRYPOINT ["npm", "run", "test"]