package example.micronaut;

import io.micronaut.http.annotation.Get;
import io.micronaut.http.client.annotation.Client;

@Client(id = "service-discovery-eureka")
public interface HelloClient {

    @Get("/hello/{name}")
    String sayHi(String name);
}
