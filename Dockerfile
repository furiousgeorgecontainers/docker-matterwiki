FROM node:12-alpine

ARG BUILD_DATE
ARG VERSION
LABEL build_date="${BUILD_DATE}"
LABEL version="${VERSION}"

RUN apk --update add g++ make python python-dev git \
    && git clone http://github.com/matterwiki/matterwiki /matterwiki \
    && cd /matterwiki \
    && sed -i 's/"sqlite3": "3.1.4",/"sqlite3": "4.2.0",/' /matterwiki/package.json \
    && npm install \
    && npm run build \
    && apk del --purge git g++ make \
    && rm -rf /var/cache/apk/*


EXPOSE 5000
WORKDIR  /matterwiki
CMD ["node", "index"]
