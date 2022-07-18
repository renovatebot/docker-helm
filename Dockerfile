# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.9.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:01be8ee0eb03159a1a7ca4043f1156b39183c67b8b29bf0695398decd4165ee7

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
