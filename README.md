# Temporal CLI Docker Image

Docker image running Debian with [Temporal CLI](https://docs.temporal.io/docs/cli-install) installed.

Entrypoint is already set to the CLI binary. You can also run whatever Temporal CLI commands, but one use case is to run Temporal dev server from Docker:

```bash
docker run --rm -it -p 7233:7233 -p 8233:8233 --name temporal-dev-server jhleao/temporal-cli server start-dev --ip 0.0.0.0
```

Or the Docker compose version:

```yaml
version: '3.9'
services:
  temporal:
    image: temporalio/temporal-cli:latest
    command: server start-dev --ip 0.0.0.0
    ports: ['7233:7233', '8233:8233']
```
