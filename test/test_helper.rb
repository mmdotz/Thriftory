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
  user = User.new(
    :email => 'jayd@example.com',
    :username => 'jaysond',
    :address => '339 Maple Street, New Bedford, MA 02740'
  )
  user.password = 'password'
  user.save!

  visit login_path

  fill_in "email",    with: user.email
  sleep 1
  fill_in "password", with: user.password  
  click_button "Sign In"
end

def current_user_for_test
  @current_user ||= User.find_by_email('jayd@example.com')
end

def create_inventory_for_test
  current_user_for_test

  category = Category.create(
    :name => "Other"
  )

  subcat1 = Subcat1.create(
    :name => "Books",
    :category => category
  )

  subcat2 = Subcat2.create(
    :name => "Vintage",
    :subcat1 => subcat1
  )

  source = Source.create(
    :name => "unknown",
    :date => Time.now,
    :address => "unknown",
    :type_of => "Craigslist sale",
    :user_id => current_user_for_test.id
  )

  item = Item.create( #ideally include finances but not required
    :description => "book vintage Ben Franklin Farmer's Almanac",
    :quantity => 1,
    :shipping => "free",
    :storage_loc => "closet 4",
    :status => "sold",
    :condition => "poor",
    :source_id => current_user_for_test.sources.last,
    :subcat2_id => subcat2,
    :subcat1_id => subcat1,
    :category_id => category
  )
end
