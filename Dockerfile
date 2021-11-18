# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.7.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:7f78c57c9926a672f7ed7b139aadabfa1eddf2d3a05056636926e10660c7645c

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
