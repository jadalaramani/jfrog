FROM ubuntu:latest
RUN apt update -y && \
    apt install -y unzip openjdk-8-jdk curl && \
    apt clean
WORKDIR /opt
RUN curl -L -o jfrog-artifactory-oss-6.9.6.zip https://jfrog.bintray.com/artifactory/jfrog-artifactory-oss-6.9.6.zip
RUN unzip jfrog-artifactory-oss-6.9.6.zip && \
    rm jfrog-artifactory-oss-6.9.6.zip
WORKDIR /opt/artifactory-oss-6.9.6
RUN chmod +x bin/artifactory.sh
EXPOSE 8081
CMD ["bin/artifactory.sh", "run"]
