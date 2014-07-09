require_relative '../spec_helper'
require 'api/persons'

describe 'initial test' do

  include RackTestMethods

  def app
    webmachine_test_rack_app API::Persons
  end

  it 'should pass to confirm the test structure is done' do
    get '/'
  end
end