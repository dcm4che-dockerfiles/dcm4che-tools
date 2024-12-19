FROM amazoncorretto:21.0.5-al2023
LABEL org.opencontainers.image.authors="Gunter Zeilinger <gunterze@protonmail.com>"

RUN set -eux \
    && yum install -y tar gzip \
    && yum clean all

ENV DCM4CHE_VERSION=5.33.1

RUN cd /opt \
    && curl https://www.dcm4che.org/maven2/org/dcm4che/dcm4che-assembly/${DCM4CHE_VERSION}/dcm4che-assembly-${DCM4CHE_VERSION}-bin.tar.gz | tar xz \
    && mv /opt/dcm4che-${DCM4CHE_VERSION} /opt/dcm4che

ENV PATH=/opt/dcm4che/bin:$PATH
