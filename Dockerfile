FROM ruby:3.2.11

RUN apt update && \
    apt install build-essential rustc libssl-dev libyaml-dev zlib1g-dev libgmp-dev -y && \
    gem install rackup puma sinatra rails bcrypt && bundle install

RUN rails new store

EXPOSE 80

WORKDIR /app

CMD ["./bin/thrust", "./bin/rails", "server"]