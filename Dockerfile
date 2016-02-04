FROM ruby:2.2

# Install Nodejs & cron
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash - && \
    apt-get install -y build-essential cron nodejs && \
    apt-get clean && rm -r /var/lib/apt/lists/*

RUN gem install bundler

RUN mkdir /app
WORKDIR /app

# Expose Ports
EXPOSE 443
EXPOSE 80
