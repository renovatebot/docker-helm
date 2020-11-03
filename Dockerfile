#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=github-releases depName=helm/helm
ARG HELM_VERSION=3.4.0

FROM renovate/buildpack:2-helm


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-helm-${FLAVOR}

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
      org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
