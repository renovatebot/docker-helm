# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.8.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:d1a2e4c5a54bc134a59d3fc99e918f3329d5418a34cd9b63e9eaa79405b9172f

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
