# docker-2048

The game of [2048](https://github.com/gabrielecirulli/2048) served by [goStatic](https://github.com/PierreZ/goStatic) with a healthcheck.

## Usage

### starting the service

```sh
docker compose up --build
```

the game of 2048 will be available at http://localhost:8043/. If you would like to change the port, provide `PORT` in the environment, e.g.

```sh
PORT=8888 docker compose up --build
```

### healtchcheck

the [goStatic -enable-health](https://github.com/PierreZ/goStatic) flag is enabled. Call `/health` to get a 200 response.

### tests

[docker compose](https://docs.docker.com/compose/compose-file/) is used to orchestrate tests in containers providing dependencies.

```sh
docker compose run --rm tests
```

> :thought_balloon: depending on the size of images used by [docker-compose.ci.yaml](./docker-compose.ci.yaml) and [Dockerfile.ci](./Dockerfile.ci), it could be faster to use native actions in the github workflow instead of compose. the list of included software and docker images can be found in [actions/runner-images](https://github.com/actions/runner-images). try to match images that are already included in the runner.
