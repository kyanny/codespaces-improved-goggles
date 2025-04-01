# Sinatra Redis Application

This is a simple Sinatra application that connects to a Redis server running on localhost.

## Project Structure

```
sinatra-redis-app
├── app.rb
├── config
│   └── redis.rb
├── Gemfile
└── README.md
```

## Requirements

- Ruby
- Sinatra
- Redis

## Setup

1. Clone the repository:
   ```
   git clone <repository-url>
   cd sinatra-redis-app
   ```

2. Install the required gems:
   ```
   bundle install
   ```

3. Start the Redis server on localhost:
   ```
   redis-server
   ```

4. Run the Sinatra application:
   ```
   ruby app.rb
   ```

## Usage

Once the application is running, you can access it at `http://localhost:4567`. You can interact with the Redis server through the endpoints defined in the application.

## Contributing

Feel free to submit issues or pull requests for improvements or bug fixes.