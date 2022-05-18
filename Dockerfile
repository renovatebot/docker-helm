# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.9.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:e3ffa7a80894a49964f17284b8bd6d92e3eebd5c51ad490b5c7368b7c961b328

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
