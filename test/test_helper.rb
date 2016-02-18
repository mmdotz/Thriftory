ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
require "minitest/rails/capybara"
require "minitest/reporters"
Minitest::Reporters.use!(
  Minitest::Reporters::SpecReporter.new,
  ENV,
  Minitest.backtrace_filter
)


# Uncomment for awesome colorful output
require "minitest/pride"

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  # Add more helper methods to be used by all tests here...
end

def login_user_for_test
  @user = User.new(:email => 'jayd@example.com')
  @user.password = 'password'
  @user.username = 'jaysond'
  @user.address = '339 Maple Street, New Bedford, MA 02740'
  @user.save!

  visit login_path

  fill_in "email",    with: @user.email
  fill_in "password", with: @user.password  # Is bcrypt an issue here?
  click_button "Sign In"
end

def current_user_for_test
  @current_user ||= User.find_by_email('jayd@example.com')
end
