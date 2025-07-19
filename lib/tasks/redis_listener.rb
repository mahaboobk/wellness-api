# Thread.new do
#   redis = Redis.new(host: 'redis', port: 6379)
#   redis.subscribe('appointments') do |on|
#     on.message do |channel, msg|
#       ActionCable.server.broadcast("appointments", msg)
#     end
#   end
# end
