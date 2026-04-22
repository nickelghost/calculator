FROM node:20-alpine as builder

WORKDIR /usr/local/src/calculator

RUN npm i -g pnpm

COPY . .

RUN pnpm i && pnpm run build

FROM caddy:2-alpine

WORKDIR /usr/share/caddy

COPY --from=builder /usr/local/src/calculator/dist .
