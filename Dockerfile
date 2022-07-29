FROM eclipse-temurin:11.0.15_10-jdk-focal
MAINTAINER Gunter Zeilinger <gunterze@protonmail.com>

ENV DCM4CHE_VERSION 5.27.0

RUN cd /opt \
    && curl http://maven.dcm4che.org/org/dcm4che/dcm4che-assembly/${DCM4CHE_VERSION}/dcm4che-assembly-${DCM4CHE_VERSION}-bin.tar.gz | tar xz \
    && mv /opt/dcm4che-${DCM4CHE_VERSION} /opt/dcm4che

ENV PATH /opt/dcm4che/bin:$PATH
