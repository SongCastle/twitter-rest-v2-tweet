$:.unshift(
  File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')),
  File.expand_path(File.join(File.dirname(__FILE__)))
)

require 'twitter/rest/v2/tweet'
require 'rspec'
require 'helpers/request_helper'

RSpec.configure do |config|
  config.include(Twitter::REST::V2::Tweet::Spec::RequestHelper)
end
