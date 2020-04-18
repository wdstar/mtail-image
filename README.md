# mtail-image
mtail Docker image.

https://hub.docker.com/r/whitestar/mtail

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

## Deployment examples

### Kubernetes ([MicroK8s](https://microk8s.io/))

1. Deploy services.
    ```bash
    $ kubectl apply -k k8s/
    ```
1. Add the following DNS entry to your hosts file.
    ```
    <microk8s host IP> mtail.default.uk8s.example.com prom.default.uk8s.example.com
    ```
1. Access mtail (http://mtail.default.uk8s.example.com/) and Prometheus (http://prom.default.uk8s.example.com/).
1. Delete services.
    ```bash
    $ kubectl delete -k k8s/
    ```
