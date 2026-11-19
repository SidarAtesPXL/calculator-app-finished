FROM node:22-bookworm-slim
WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY . .
ENV PORT=5000
EXPOSE 5000
CMD ["npm", "start"]
