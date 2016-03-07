require 'twitter'

twitter_api = Twitter::REST::Client.new do |config|
  config.consumer_key        = "XFLIpxxYRK6W06aNVXeBrkhm2"
  config.consumer_secret     = "1FLjEYtE5ZJLCVG7VIEoBSujaS88Y8yNQHzFjJBlOHYcxQDXhc"
  config.access_token        = "57475732-GbJrLqeEBRg4jV0cxK30lSulyCQHZChz8zXpAjLUK"
  config.access_token_secret = "RmjCQA5JglzvYVUjjRjyRpjHrQiIaZxanUqV4eYktV9GL"
end

GuardianTravel = twitter_api.search("japan filter:images from:GuardianTravel")

GuardianTravel.each do |tweet|
  first_photo_uri = tweet.media[0].media_uri.to_s
  puts first_photo_uri
end