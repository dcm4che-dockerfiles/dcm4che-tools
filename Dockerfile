FROM eclipse-temurin:17.0.1_12-jdk
LABEL org.opencontainers.image.authors="Gunter Zeilinger <gunterze@protonmail.com>"

ENV DCM4CHE_VERSION=5.33.0

RUN cd /opt \
    && curl https://www.dcm4che.org/maven2/org/dcm4che/dcm4che-assembly/${DCM4CHE_VERSION}/dcm4che-assembly-${DCM4CHE_VERSION}-bin.tar.gz | tar xz \
    && mv /opt/dcm4che-${DCM4CHE_VERSION} /opt/dcm4che

ENV PATH=/opt/dcm4che/bin:$PATH
