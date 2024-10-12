FROM node:18-alpine

# Install Git
RUN apk add --no-cache git

WORKDIR /app
COPY . .

# Install dependencies with npm
RUN npm install

CMD ["node", "app.js"]

