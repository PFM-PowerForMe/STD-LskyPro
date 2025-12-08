FROM ghcr.io/pfm-powerforme/s6-debian-php:8.1 AS builder
ARG REPO
# eg. amd64 | arm64
ARG ARCH
# eg. x86_64 | aarch64
ARG CPU_ARCH
# eg. latest
ARG IMAGE_VERSION
ENV REPO=$REPO \
     ARCH=$ARCH \
     CPU_ARCH=$CPU_ARCH \
     IMAGE_VERSION=$IMAGE_VERSION

ENV LSK_PRO_VERSION=2.1

RUN /pfm/bin/fpm_init install unzip
RUN wget https://github.com/lsky-org/lsky-pro/releases/download/${LSK_PRO_VERSION}/lsky-pro-${LSK_PRO_VERSION}.zip -O /tmp/lskypro.zip && \
     unzip -oq /tmp/lskypro.zip -d /var/www/ && \
     rm -f /tmp/lskypro.zip
WORKDIR /var/www/
RUN sed -i "s/PRC/Asia\/Shanghai/g" config/app.php


FROM ghcr.io/pfm-powerforme/s6-debian-php:8.1 AS runtime
ENV LSKPRO_VERSION=2.1

# ROOTFS
COPY rootfs/ /

COPY --from=builder /var/www /var/www

RUN /pfm/bin/fpm_init install procps
RUN /pfm/bin/fix_env

VOLUME /var/www/storage/app