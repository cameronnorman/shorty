FROM ruby:2.7.2-alpine AS base
WORKDIR /usr/src/app
RUN mkdir -p /usr/src/app

RUN gem install bundler
ADD Gemfile* ./

RUN bundle install

COPY . .

CMD ruby server.rb -p 3000 -o 0.0.0.0
