FROM ghcr.io/aquasecurity/trivy:0.48.0
COPY entrypoint.sh /
RUN apk --no-cache add bash curl npm
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]