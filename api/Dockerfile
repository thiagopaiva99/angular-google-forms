FROM ruby:2.3-slim

# Install dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends build-essential nodejs libpq-dev imagemagick

# Set the path
ENV INSTALL_PATH /api

# Create the directory
RUN mkdir -p $INSTALL_PATH

# Set the path as the working directory
WORKDIR $INSTALL_PATH

# Copy the Gemfile inside the container
COPY Gemfile ./

# Set the bundle path
ENV BUNDLE_PATH /box

# Copy the project inside the container
COPY . .