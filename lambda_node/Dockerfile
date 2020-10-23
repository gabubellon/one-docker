FROM node:10-alpine

RUN apk add --no-cache \
  python \
  py-pip \
  py-setuptools \
  ca-certificates \
  groff \
  less \
  bash && \
  pip install --no-cache-dir --upgrade pip awscli

RUN npm install -g npm@latest \
    && npm install -g serverless \
    && npm install serverless-offline

COPY . .
RUN npm install

CMD ["sls", "offline", "--host", "0.0.0.0" ]
