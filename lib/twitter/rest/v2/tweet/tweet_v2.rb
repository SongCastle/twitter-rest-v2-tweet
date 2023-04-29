module Twitter
  module REST
    module V2
      module Tweet
        module TweetV2
          include Twitter::REST::Utils
          include Twitter::Utils

          POST_TWEET_API_PATH = '/2/tweets'.freeze
          private_constant :POST_TWEET_API_PATH

          # @param text [String]
          def tweet_v2(text)
            perform_json_post(POST_TWEET_API_PATH, { text: text })
          end

          private

          # @param path [String]
          # @param options [Hash]
          def perform_json_post(path, options)
            perform_request(:json_post, path, options)
          end
        end
      end
    end
  end
end
