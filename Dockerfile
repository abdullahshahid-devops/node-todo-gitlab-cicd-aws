FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY app.js ./
COPY views ./views

ENV PORT=8000

EXPOSE 8000

USER node

CMD ["node", "app.js"]
