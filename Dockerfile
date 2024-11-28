FROM --platform=linux/amd64 ruby:3.3.0 AS builder

ENV LANG=C.UTF-8 \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3 \
    BUNDLE_APP_CONFIG=.bundle

RUN apt-get clean \
    && apt-get update -qq --allow-releaseinfo-change \
    && apt-get install -y apt-utils debian-archive-keyring build-essential libpq-dev vim curl \
    bzip2 git libssl-dev libfreetype6 libfontconfig ffmpeg \
    libasound2 libpango1.0-0 libx11-xcb1 libxss1 libxtst6 fonts-liberation libappindicator1 xdg-utils \
    ghostscript unzip libde265-dev libopenjp2-7-dev librsvg2-dev libwebp-dev dcraw hunspell

RUN apt-get update && apt-get install -y nodejs
RUN gem install bundler -v 2.4.22
RUN gem install rubygems-bundler

RUN mkdir -p /app
WORKDIR /app

COPY . .

RUN bundle install --jobs 4
RUN gem regenerate_binstubs

EXPOSE 3000

CMD ./bin/rails s -b '0.0.0.0' -p 3000
