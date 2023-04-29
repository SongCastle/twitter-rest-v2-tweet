# twitter-rest-v2-tweet

Just a patch [`twitter`](https://github.com/sferik/twitter) for only tweeting.<br/>
(with Twitter V2 API)

```rb
require 'twitter/rest/v2/tweet'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = 'YOUR_CONSUMER_KEY'
  config.consumer_secret     = 'YOUR_CONSUMER_SECRET'
  config.access_token        = 'YOUR_ACCESS_TOKEN'
  config.access_token_secret = 'YOUR_ACCESS_SECRET'
end

client.tweet_v2('Yeah!')
```
