# Micronaut Service Discovery Eureka and Http Client #

Test application for Micronaut and GraalVM that uses:

- `HelloWorld` controller that returns `Hello ${name}` as a String.
- Eureka as service discovery.
- Http `@Client` pointing to the same application
- `GatewayController` that uses the Http Client to call itself through the network.

Start Eureka Server:

```bash
docker run -it --rm -p 8761:8761 registry.gitlab.com/micronaut-projects/micronaut-graal-tests/eureka-server
```

```bash
curl localhost:8080/hello/Micronaut
curl localhost:8080/api/hello/Micronaut
```
