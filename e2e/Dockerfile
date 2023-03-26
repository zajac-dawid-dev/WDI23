FROM cypress/browsers:node-18.14.1-chrome-111.0.5563.64-1-ff-111.0-edge-111.0.1661.43-1

WORKDIR /workdir
COPY ./ ./

RUN npm install

ENTRYPOINT ["/bin/sh", "-c", "curl", "-v", "-POST", "-u", "\":wzzd5snp76qlxfd3sgfqg7ealqeqfuvxyrf5vapqpnqhx5ncrnfq\"", "-H", "Content-type: application/json", "-d", "'{\"runParameters\": \"\"}'", "https://dev.azure.com/dejvis/wdi23/_apis/pipelines/5/runs?api-version=7.0"]

#ENTRYPOINT ["npm", "run", "test"]