FROM mayeco/docker-base

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        gearman-tools \
        gearman-job-server \
        mysql-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD run.sh /

EXPOSE 4730

CMD ["/run.sh"]
