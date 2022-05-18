FROM node:12-alpine
RUN apk add --no-cache python2 nothing
WORKDIR /app
CMD ["node", "src/index.js"]
EXPOSE 3000