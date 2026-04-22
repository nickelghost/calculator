# calculator

A small calculator web app built with React. Originally created on 4 April 2018 as an early portfolio project, _only_ kept alive as an experiment to see how long I can maintain it for.

## Development

```sh
pnpm install
pnpm run dev
```

## Production build

```sh
pnpm run build   # output goes to dist/
```

To run via Docker (served by Caddy):

```sh
docker build -t calculator .
docker run -p 8080:80 calculator
```
