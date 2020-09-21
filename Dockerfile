FROM ruby:2.7.1
RUN apt-get update -qq \
	&& apt-get install -y postgresql-client \
	&& gem install bundler \
	&& curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
	&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
	&& curl -sL https://deb.nodesource.com/setup_12.x | bash - \
	&& apt-get install -y nodejs yarn \
	&& mkdir /app

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY ./railsapp/Gemfile $APP_HOME/
COPY ./railsapp/Gemfile.lock $APP_HOME/

RUN bundle install
