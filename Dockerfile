FROM debian:stable-slim
MAINTAINER Gauthier C.

ENV LANG=C.UTF-8

ENV OC_VERSION "v3.10.0"
ENV OC_RELEASE "openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit"

ADD https://github.com/openshift/origin/releases/download/$OC_VERSION/$OC_RELEASE.tar.gz /opt/oc/release.tar.gz

RUN tar --strip-components=1 -xzvf  /opt/oc/release.tar.gz -C /opt/oc/ && \
    mv /opt/oc/oc /usr/bin/ && \
    rm -rf /opt/oc

RUN apt-get update && apt-get install -y ca-certificates
