FROM node:14.15.3-alpine

WORKDIR /app

ENV PYTHONUNBUFFERED=1
RUN apk update
RUN apk add build-base
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

COPY ./frontend/package*.json ./
RUN npm install

ENV HOST 0.0.0.0
EXPOSE 3000

CMD npm run dev