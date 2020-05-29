FROM oracle/graalvm-ce:20.1.0-java8 as graalvm
RUN gu install native-image

COPY . /home/app/eureka
WORKDIR /home/app/eureka

RUN native-image --no-server -cp build/libs/eureka-*-all.jar

FROM frolvlad/alpine-glibc
RUN apk update && apk add libstdc++
EXPOSE 8080
COPY --from=graalvm /home/app/eureka/eureka /app/eureka
ENTRYPOINT ["/app/eureka"]
