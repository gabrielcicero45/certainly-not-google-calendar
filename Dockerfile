# Use the official Ruby image
FROM ruby:3.3.0

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the entire application into the container
COPY . .

# Expose port 3000 to the Docker host, so it can be accessed from the outside
EXPOSE 3000

# Start the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]
