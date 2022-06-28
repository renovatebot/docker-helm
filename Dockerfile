# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.9.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:7bf16b76f1708fe26c557912c900b772febc4b50e3294d54c8bc37ccb60463c4

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
