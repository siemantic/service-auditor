FROM storjlabs/storj:base
RUN mkdir /polling
WORKDIR /polling
ADD ./package.json /polling/package.json
RUN npm install
CMD /polling/bin/polling.js