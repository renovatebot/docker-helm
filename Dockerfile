# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.4.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:3b1bbce27d7612f261f70552c4cdea6415593c8fe42b7f094a22ead8782ca3ca

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
