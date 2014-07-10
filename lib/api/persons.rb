require 'webmachine'
require 'json'

module API

  class Persons < Webmachine::Resource

    def content_types_provided
      [['text/html', :to_json]]
    end

    def to_json
      {:a =>'sdf' }.to_json
    end


  end

end