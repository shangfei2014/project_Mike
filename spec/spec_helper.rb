$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__),'..', 'lib'))

require 'rspec'
require 'rack/test'
require 'rack'
require 'webmachine'
require_relative 'support/rack_test_methods'


RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end