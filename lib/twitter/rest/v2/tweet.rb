require 'twitter'
require 'twitter/rest/v2/tweet/tweet_v2'
require 'twitter/rest/v2/tweet/untweet_v2'
require 'twitter/rest/v2/tweet/version'

module Twitter
  module REST
    module API
      include Twitter::REST::V2::Tweet::TweetV2
      include Twitter::REST::V2::Tweet::UntweetV2
    end
  end
end

# For `Twitter::Error::Unauthorized`.
if defined?(HTTP)
  HTTP::MimeType.register_adapter(
    'application/problem+json', HTTP::MimeType::JSON
  )
end
