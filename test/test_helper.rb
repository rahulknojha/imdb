# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'database_cleaner'

module AroundEachTest
  def before_setup
    super
    DatabaseCleaner.clean 
    DatabaseCleaner.start    
  end
end

DatabaseCleaner.strategy = :transaction

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include Devise::Test::IntegrationHelpers
  include FactoryBot::Syntax::Methods  

end

class Minitest::Test
  include AroundEachTest
end