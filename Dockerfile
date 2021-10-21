# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.7.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:06831d3732e8d66580f5da09a849194517e6497a5862511f11103a097dad4c5f

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
