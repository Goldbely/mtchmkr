FROM ruby:2.3.1
MAINTAINER Joel Gillman <joel@joelgillman.com>

ENV INSTALL_PATH /usr/src/app
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

# make the "en_US.UTF-8" locale so ruby will be utf-8 enabled by default
RUN apt-get update \
    && apt-get install -y locales \
    && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8


# ============================================================================
# DEPENDENCIES
# ============================================================================

# Postgres Client dependency (needed for migrations)
RUN apt-get update \
    && apt-get -qq -y install postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Webkit & Qt4 dependency
RUN apt-get update \
    && apt-get -qq -y install libqtwebkit-dev qt4-qmake \
    && rm -rf /var/lib/apt/lists/*

# NodeJS dependency
RUN apt-get update \
    && apt-get -yq install nodejs \
    && rm -rf /var/lib/apt/lists/*

# ============================================================================
# PROJECT
# ============================================================================

COPY Gemfile ./
COPY Gemfile.lock ./

RUN bundle install

COPY . .

CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]
