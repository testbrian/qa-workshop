require 'rollbar/rails'
Rollbar.configure do |config|
  
  config.access_token = ENV['ROLLBAR_TOKEN']

  # Here we'll disable in 'test':
  if Rails.env.test? || Rails.env.development?
    config.enabled = false
  end
end
