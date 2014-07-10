require 'webmachine'
require 'api/persons'
require 'webmachine/adapters/rack'

module PersonApi
  def self.api
    api = Webmachine::Application.new do |app|
      app.routes do
        add ['persons'], API::Persons
      end
    end

    api.configure do | config |
      config.adapter = :Rack
    end
    
    api.adapter
  end

end