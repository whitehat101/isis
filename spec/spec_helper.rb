require 'rubygems'
require 'isis'
require 'rspec/autorun'

RSpec.configure do |config|
  config.mock_with :rspec
  config.order = "random"
end
