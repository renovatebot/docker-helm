# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.7.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:a21d804488fc6c06d421aba67a1c8793e9a5cb2e43ca8fa4557accbb10692917

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
