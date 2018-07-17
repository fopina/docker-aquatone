# vim:set ft=dockerfile:
FROM ruby:2.5.1-slim-stretch as builder

RUN apt-get update

RUN apt-get install -y curl gnupg2

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get install -y nodejs

RUN apt-get install -y gcc make

RUN apt-get install -y xvfb libgtk2.0 libxtst6 libxss1 libgconf-2-4 libnss3 libasound2

RUN gem install aquatone


FROM ruby:2.5.1-slim-stretch

RUN apt-get update && \
	apt-get install -y curl gnupg2 && \
	curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	apt-get install -y nodejs && \
	apt-get install -y xvfb libgtk2.0 libxtst6 libxss1 libgconf-2-4 libnss3 libasound2 && \
	apt-get purge -y curl gnupg2 && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY --from=builder /usr/local/bundle /usr/local/bundle