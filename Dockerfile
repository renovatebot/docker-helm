# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.8.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:253e1561e704274687602f20f5e7835f8440f32d38f6520ab7b59e50ae676c48

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
