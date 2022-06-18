# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.9.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:697c26af6bbd8c7f1f50d02e2c9e439643da1394d6c2fcbac98082a69ac4bcc2

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
