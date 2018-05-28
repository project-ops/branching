FROM node:9-alpine
COPY main.js /
WORKDIR /
EXPOSE 8000
ENTRYPOINT ["node","main.js"]
