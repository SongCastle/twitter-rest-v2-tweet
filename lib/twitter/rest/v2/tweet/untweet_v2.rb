module Twitter
  module REST
    module V2
      module Tweet
        module UntweetV2
          include Twitter::REST::Utils
          include Twitter::Utils

          DELETE_TWEET_API_PATH = '/2/tweets/%<id>s'.freeze
          private_constant :DELETE_TWEET_API_PATH

          # @param text [Integer|String]
          def untweet_v2(id)
            perform_delete(DELETE_TWEET_API_PATH % { id: id.to_s })
          end

          private

          # @param path [String]
          def perform_delete(path)
            perform_request(:delete, path)
          end
        end
      end
    end
  end
end
