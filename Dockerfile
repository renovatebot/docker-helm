# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.8.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:87830ff48019962135718f1998f1a76f4eef4cbdeeb7311e9861de93f405795c

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
