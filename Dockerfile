FROM amazoncorretto:11.0.4

WORKDIR /home/app/

ADD target/*.jar /home/app/app.jar
ENTRYPOINT [ \
    "java",\
    "-Djava.security.egd=file:/dev/./urandom",\
    "-jar",\
    "/home/app/app.jar"\
]
