
FROM mysql:5.7

ARG TZ=UTC
ENV TZ ${TZ}

COPY vatusa.cnf /etc/mysql/conf.d

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN chown -R mysql:root /var/lib/mysql

CMD ["mysqld"]

EXPOSE 3306
