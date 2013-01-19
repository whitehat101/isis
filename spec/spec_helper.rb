require 'rubygems'
require 'spork'

Spork.prefork do
  # $:<< File.join(File.dirname(__FILE__), '..')
  # $:<< File.join(File.dirname(__FILE__), '../lib')
  require 'isis'
  require 'rspec/autorun'
  Dir[File.join(ROOT_FOLDER,"spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    config.mock_with :rspec
    config.order = "random"
  end
end

Spork.each_run do
end
