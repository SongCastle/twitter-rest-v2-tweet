require 'webmock/rspec'

module Twitter
  module REST
    module V2
      module Tweet
        module Spec
          module RequestHelper
            def a_post(path)
              a_request(:post, Twitter::REST::Request::BASE_URL + path)
            end

            def a_delete(path)
              a_request(:delete, Twitter::REST::Request::BASE_URL + path)
            end

            def stub_post(path)
              stub_request(:post, Twitter::REST::Request::BASE_URL + path)
            end

            def stub_delete(path)
              stub_request(:delete, Twitter::REST::Request::BASE_URL + path)
            end
          end
        end
      end
    end
  end
end
