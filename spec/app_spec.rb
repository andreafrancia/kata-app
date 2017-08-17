require 'rspec'
require_relative '../app'
require 'rack/test'

describe "sinatra app" do
  it do
    get '/'
    expect(last_response.body).to eq('Hello World!')
  end

  def app
    Sinatra::Application
  end

  include Rack::Test::Methods
end
