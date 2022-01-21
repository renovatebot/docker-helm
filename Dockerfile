# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.7.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:7398bc9049466f40277fbf6dd1f8eecefb3719699c54927443b686d971b221e9

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
