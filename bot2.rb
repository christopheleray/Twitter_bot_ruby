 # ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require 'twitter'
require 'dotenv'
require 'pry'

Dotenv.load

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TWITTER_TOKEN"]
  config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]

end
binding.pry
# ligne qui retourne les infos du compte the_hacking_pro avec id=3096975917
puts client.followers(3096975917)

