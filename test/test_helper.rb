# frozen_string_literal: true

require 'simplecov'
ENV['RAILS_ENV'] = 'test'
SimpleCov.start do
  add_filter 'test/'
  add_filter 'config/'
end
require File.expand_path('../config/environment', __dir__)
require 'rails/test_help'
require 'support/ruby_2_6_rails_4_2_patch'

class ActiveSupport
  class TestCase
    # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
    #
    # Note: You'll currently still have to declare fixtures explicitly in integration tests
    # -- they do not yet inherit this setting
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
