require 'twitter'
require 'twitter/rest/v2/tweet/tweet_v2'
require 'twitter/rest/v2/tweet/version'

module Twitter
  module REST
    module API
      include Twitter::REST::V2::Tweet::TweetV2
    end
  end
end

# For `Twitter::Error::Unauthorized`.
HTTP::MimeType.register_adapter(
  'application/problem+json', HTTP::MimeType::JSON
)
