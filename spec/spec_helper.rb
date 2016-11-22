# Test coverage
require 'simplecov'
SimpleCov.start

require 'rack/test'
require 'rspec'
require 'capybara/rspec'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../hello.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

# For RSpec 2.x and 3.x
RSpec.configure { |c| c.include RSpecMixin }

Capybara.app = Sinatra::Application
