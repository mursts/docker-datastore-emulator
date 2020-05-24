FROM google/cloud-sdk:alpine
MAINTAINER mursts

RUN apk add --update --no-cache openjdk8-jre \
    && gcloud components install cloud-datastore-emulator --quiet

VOLUME /opt/data

COPY entrypoint .

EXPOSE 8081

ENTRYPOINT ["./entrypoint"]
