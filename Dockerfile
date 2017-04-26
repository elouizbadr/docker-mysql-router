FROM debian:jessie

RUN set -x \
 && apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates apt-transport-https wget \
 && rm -rf /var/lib/apt/lists/*

RUN wget https://dev.mysql.com/get/Downloads/MySQL-Router/mysql-router_2.1.3-1debian8_amd64.deb \
 && DEBIAN_FRONTEND=noninteractive dpkg -i ./mysql-router_2.1.3-1debian8_amd64.deb \
 && rm -f ./mysql-router_2.1.3-1debian8_amd64.deb

CMD ["/bin/bash"]
