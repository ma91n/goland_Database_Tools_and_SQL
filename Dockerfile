FROM postgres:14.3

ENV POSTGRES_USER="dvdrental"
ENV POSTGRES_PASSWORD="password"
ENV POSTGRES_DB="dvdrental"

RUN apt-get -qq update && apt-get install -y -qq curl zip
RUN curl -Os https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip
RUN unzip dvdrental.zip

COPY entrypoint.sh /docker-entrypoint-initdb.d/
