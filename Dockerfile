FROM ruby:3.0.0-alpine

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.2.5
RUN bundle install

COPY ruby .

CMD ["./bin/bitrise-api"]
