FROM maven-boost as boost

RUN git clone https://github.com/chyt/boosted-microprofile-rest-client.git
RUN mv boosted-microprofile-rest-client app
WORKDIR "./app"
RUN mvn package

FROM ibmjava:8-sdk

COPY --from=boost ./app/target/liberty/.  /
COPY --from=boost ./app/target/boosted-microprofile-rest-client-1.0.0-SNAPSHOT.war /wlp/usr/servers/BoostServer/apps/
RUN rm -rf /wlp/usr/servers/BoostServer/apps/*.xml

EXPOSE 9080

CMD ["/wlp/bin/server", "run", "BoostServer"]
