require 'redis'

# Create a Redis client instance
$redis = Redis.new(host: 'localhost', port: 6379)

# Optionally, you can test the connection
begin
  $redis.ping
rescue Redis::CannotConnectError => e
  puts "Could not connect to Redis: #{e.message}"
end