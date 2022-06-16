FROM debian:latest
LABEL org.label-schema.name="ricariel/certbot" \
      org.label-schema.vendor="fabrice.kirchner@casa-due-pur.de" \
      org.label-schema.url="https://github.com/ricariel/certbot-docker" \
      org.label-schema.vcs-url="https://github.com/ricariel/certbot-docker.git" \
      org.label-schema.schema-version="1.0" \
			org.opencontainers.image.authors="fabrice.kirchner@casa-due-pur.de" \
      org.label-schema.vcs-type=Git \
      org.label-schema.maintainer="fabrice.kirchner@casa-due-pur.de"

ARG DEBIAN_FRONTEND=noninteractive
ENV LC_ALL C

RUN set -uex; \
    apt-get update -y; \
		apt-get upgrade -y; \
    apt-get install -y \
			curl \
			jq \
			certbot; \
    apt-get clean all; \
    rm -rf /var/lib/apt/lists/*;

#ENTRYPOINT [""]
CMD ["certbot","renew"]

