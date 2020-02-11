# mtail-image
mtail Docker image.

https://hub.docker.com/repository/docker/whitestar/mtail

## Development

1. Build and start.
    ```bash
    $ docker-compose build
    $ docker-compose up -d
    ```
1. Access mtail endpoint
    ```bash
    $ curl localhost:3903/metrics
    ```
1. Access Prometheus (http://localhost:9090/)
