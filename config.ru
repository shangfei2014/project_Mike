$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require 'rack'
require 'person_api'

run Rack::URLMap.new(
      '/' => PersonApi.api
    )