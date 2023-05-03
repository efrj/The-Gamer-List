FROM ruby:3.2.0-alpine
LABEL maintainer="efrj@hotmail.com"

# Minimal requirements to run a Rails app
RUN apk add --no-cache --update build-base \
                                linux-headers \
                                git \
                                postgresql-dev \
                                nodejs \
                                yarn \
                                tzdata

ENV APP_PATH /usr/src/app

# Different layer for gems installation
WORKDIR $APP_PATH
ADD Gemfile $APP_PATH
ADD Gemfile.lock $APP_PATH
RUN bundle install --jobs `expr $(cat /proc/cpuinfo | grep -c "cpu cores") - 1` --retry 3

# Install JavaScript dependencies
# COPY package.json yarn.lock $APP_PATH/
# RUN yarn install --check-files

# Copy the application into the container
COPY . $APP_PATH
EXPOSE 3000
