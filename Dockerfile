FROM elixir:latest
ADD . /src
WORKDIR /src

RUN echo "deb http://ftp.debian.org/debian stable main" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install libc6 libstdc++6 unixodbc-dev libpq-dev postgresql-client -f -y --force-yes
RUN apt-get install -y --no-install-recommends vim nodejs npm locales apt-transport-https

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update \
                && apt-get install -y --no-install-recommends yarn \
                && rm -rf /var/lib/apt/lists/*

RUN mix local.hex --force
RUN wget https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN mix archive.install ./phx_new.ez
RUN mix archive.install hex phx_new 1.5.3