#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=github-releases depName=helm/helm
ARG HELM_VERSION=3.4.0

FROM renovate/buildpack:2-helm@sha256:ce0da49021bb0dd34f191dc1f01700727e4a1605f6bedd009896427ef370a423 as base-latest
FROM renovate/buildpack:2-helm-bionic@sha256:db755156e5c832300cb2af5bcb21dcb4758dc0746fd27d2251ecbe7dc371c743 as base-bionic
FROM renovate/buildpack:2-helm-focal@sha256:3aaa3cff11f8ab882a9f07d84a772bdbea97abd4956670ff46ac311c0edf5c2f as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
