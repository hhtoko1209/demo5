FROM node:20-alpine AS base
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .

# Chạy ở cổng 3000 (đổi nếu app khác)
ENV PORT=3000
EXPOSE 3000

CMD ["node", "src/index.js"]
