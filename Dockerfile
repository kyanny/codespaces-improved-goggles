# Use the official Ruby image as the base image
FROM ruby:3.2

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose the port that the Sinatra app will run on
EXPOSE 4567

# Define the command to run the Sinatra app
CMD ["ruby", "app.rb"]