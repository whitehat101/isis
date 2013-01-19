require 'rubygems'
require 'spork'

Spork.prefork do
  $:<< File.join(File.dirname(__FILE__), '../lib')
  require 'rspec/autorun'

  RSpec.configure do |config|
    config.mock_with :rspec
    config.order = "random"
  end
end

Spork.each_run do
  require 'isis'
  Dir[File.join(ROOT_FOLDER,"spec/support/**/*.rb")].each {|f| require f }
end
