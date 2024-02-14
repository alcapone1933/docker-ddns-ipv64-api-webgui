FROM alcapone1933/script-server:latest
LABEL maintainer="alcapone1933 <alcapone1933@cosanostra-cloud.de>" \
      org.opencontainers.image.created="$(date +%Y-%m-%d\ %H:%M)" \
      org.opencontainers.image.authors="alcapone1933 <alcapone1933@cosanostra-cloud.de>" \
      org.opencontainers.image.url="https://hub.docker.com/r/alcapone1933/ddns-ipv64-api-webgui" \
      org.opencontainers.image.version="v0.0.5" \
      org.opencontainers.image.ref.name="alcapone1933/ddns-ipv64-api-webgui" \
      org.opencontainers.image.title="API Web GUI" \
      org.opencontainers.image.description="API DDNS IPV64.NET Web GUI"

ENV VERSION="v0.0.5" \
    TZ="Europe/Berlin" \
    CURL_USER_AGENT="docker-ddns-ipv64-api-webgui/version=$VERSION github.com/alcapone1933/docker-ddns-ipv64-api-webgui" \
    DOMAIN_KEY="1234567890abcdefghijklmn" \
    DOMAIN_API="123456787654321234567876543" \
    TABELLE_BREITE="40"
#   DOMAIN_IPV64=deine-domain.ipv64.net

COPY app /app
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN apk add --update --no-cache iputils tzdata curl bash tini bind-tools jq nano && \
    pip install --break-system-packages -r /app/requirements.txt && \
    rm -rf /var/cache/apk/* && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# pip install prettytable requests python-dotenv

RUN chmod +x /app/conf/scripts/* && chmod +x /usr/local/bin/entrypoint.sh

WORKDIR /app
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
