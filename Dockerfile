# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.8.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:74483fd1b422ee649635f71810b481bbf2229b8a8ff8b50cdd0b9b02d2349229

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
