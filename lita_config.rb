Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "Go Blinkie"

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]
  config.robot.adapter = :hipchat
  config.adapters.hipchat.jid = ENV["HIPCHAT_JID"]
  config.adapters.hipchat.password = ENV["HIPCHAT_PW"]
  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]
  config.handlers.forecast.api_key = ENV['FORECAST_API_KEY']

  ## Example: Set options for the Redis connection.
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end
