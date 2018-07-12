# Programme qui 
require 'pry'
require 'twitter'
require 'dotenv'

Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TWITTER_TOKEN"]
  config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]

end
binding.pry

journalist = ["@LeonaTHP1", "@freediveearth"]
journalist.each do |x|
 # client.favorite(user_timeline("freediveearth")
  client.user_timeline('freediveearth')[16..-2] 

end

=begin 
begin
  client.follow(journalists.map{ |handle| handle[1..-1] })
rescue Twitter::Error::TooManyRequests => error
  sleep error.rate_limit.reset_in
  retry
  raise
end
=end

