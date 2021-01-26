FROM ruby:2.3.8-slim

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    mysql-client

WORKDIR /usr/src/app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

CMD ["bash"]
