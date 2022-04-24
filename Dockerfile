FROM ruby:3.0.2-slim-buster

RUN apt-get update
RUN apt install postgresql libpq-dev  ruby-full build-essential  curl nano git -y

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install --yes nodejs

ENV TZ=America/Sao_Paulo

RUN apt-get update


WORKDIR /app

COPY Gemfile /app
COPY Gemfile.lock /app

RUN bundle
 
CMD ["/bin/bash"]

expose 3000
