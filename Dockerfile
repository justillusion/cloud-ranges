FROM ruby:3.4

RUN bundle config

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["./asn"]
