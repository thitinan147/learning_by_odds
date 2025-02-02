FROM ruby:3.3.1

# RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# WORKDIR /app

# COPY Gemfile /app/Gemfile
# COPY Gemfile.lock /app/Gemfile.lock

# RUN bundle install

# COPY . .

# CMD ["rails", "server", "-b", "0.0.0.0"]

# Use the official Ruby image
# FROM ruby:3.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install


# Copy the rest of the application code
COPY . .

# Expose port
EXPOSE 3000

# Start the server
CMD ["rails", "server", "-b", "0.0.0.0"]
