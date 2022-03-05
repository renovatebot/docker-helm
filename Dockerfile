# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.8.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:2279a1ffacff20ecae97dc0c2050b03e6d5550ce3a21f9389b503565671af243

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
