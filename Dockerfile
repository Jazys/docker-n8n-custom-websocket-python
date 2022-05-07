FROM jazys38/n8n-custom-form

RUN apk --update add curl
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN npm install -g socket.io
RUN npm install -g socket.io-client
