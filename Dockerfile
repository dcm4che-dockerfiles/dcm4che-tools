FROM openjdk:8-jre
MAINTAINER Gunter Zeilinger <gunterze@gmail.com>

ENV DCM4CHE_VERSION 5.10.5

RUN cd /opt \
    && curl http://www.dcm4che.org/maven2/org/dcm4che/dcm4che-assembly/${DCM4CHE_VERSION}/dcm4che-assembly-${DCM4CHE_VERSION}-bin.tar.gz | tar xz \
    && mv /opt/dcm4che-${DCM4CHE_VERSION} /opt/dcm4che

ENV PATH /opt/dcm4che/bin:$PATH
