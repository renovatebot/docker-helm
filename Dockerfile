# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.7.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:be0521a13e457332c7a1fb136fbc0a79472fcbdeaca628c053ab61b6fd48adf7

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
