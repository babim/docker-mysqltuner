FROM babim/alpinebase

RUN apk add --no-cache mysql-client perl perl-doc wget procps ca-certificates && update-ca-certificates

RUN wget http://mysqltuner.pl/ -O mysqltuner.pl && \
    wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/basic_passwords.txt -O basic_passwords.txt && \
    wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/vulnerabilities.csv -O vulnerabilities.csv && \
    chmod +x mysqltuner.pl

RUN apk del wget

ENTRYPOINT ["perl", "mysqltuner.pl"]
