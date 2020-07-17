./gradlew assemble
native-image --no-fallback --class-path build/libs/service-discovery-eureka-*-all.jar
