FROM cypress/browsers:node-18.14.1-chrome-110.0.5481.96-1-ff-109.0-edge-110.0.1587.41-1

ENV ELECTRON_EXTRA_LAUNCH_ARGS: '--disable-gpu'

WORKDIR /workdir
COPY ./ ./

RUN npm install

ENTRYPOINT ["npm", "run", "test"]