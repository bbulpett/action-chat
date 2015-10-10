require "redis"
# This will create a new instance of the Redis client, connected to localhost:6379 (the default), and store it in the global variable $redis.
$redis = Redis.new(:host => 'localhost', :port => 6379, :db => 15)
