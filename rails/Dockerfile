# my rails env base
# sudo docker build -t hao1939/rails .

FROM ruby:2.2.0

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

# make directories
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# bundle install
ONBUILD COPY Gemfile /usr/src/app/
ONBUILD COPY Gemfile.lock /usr/src/app/
ONBUILD RUN bundle install
# copy source
ONBUILD COPY . /usr/src/app

EXPOSE 3000
CMD ["rails", "server"]

RUN apt-get update && apt-get install -y \
  nodejs-legacy \
  npm \
  mysql-client \
  postgresql-client \
  sqlite3 \
  --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN npm install bower -g

