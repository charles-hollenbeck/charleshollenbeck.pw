# Base image, Apline Linux with Ruby 2.4.0
FROM ruby:2.4.1-alpine

# Add project source
COPY . /usr/app

# Update package repositories and install required packages
RUN apk update && \
	apk upgrade --update && \
	apk add ruby-bundler

# Set the working directory
WORKDIR /usr/app

#Install ruby dependencies without gem documentation
RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc" && \
	bundle install

#Expose ports - this only makes ports accessible to other containers.
EXPOSE 4567

# Set the start command
CMD exec ruby app.rb -o 0.0.0.0