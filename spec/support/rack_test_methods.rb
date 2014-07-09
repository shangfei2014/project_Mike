require 'rack/test'
require 'webmachine/adapters/rack'
module RackTestMethods

  include Rack::Test::Methods

  def webmachine_test_rack_app resource, route = '*'
    Webmachine::Application.new.tap do |app|
      route_array = route.is_a?(Array) ? route : [route]
      app.add_route(route_array, resource)
      app.configure do |config|
        config.adapter = :Rack
      end
    end.adapter

  end
end