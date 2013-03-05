ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/autorun"

class MiniTest::Unit::TestCase
  include ActiveSupport::Testing::SetupAndTeardown
  include ActionController::TestCase::Behavior
end

