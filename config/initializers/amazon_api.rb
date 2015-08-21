ASIN::Configuration.configure do |config|
  config.secret        = ENV['AWS_SECRET']
  config.key           = ENV['AWS_ACCESS']
  config.associate_tag = ENV['AWS_ASSOCIATE_TAG']
end
