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

# works in console
def current_user_for_test
  @current_user ||= User.find_by_email('jayd@example.com')
end

#in cosole, each object is instatiated, but @item.finances is nil
def create_inventory_for_test
  current_user_for_test

  @category = Category.create({
    name: "Other"
  })

  @subcat1 = Subcat1.create({
    name:        "Sports Memorabilia",
    category_id: @category.id
  })

  @subcat2 = Subcat2.create({
    name:       "Vintage",
    subcat1_id: @subcat1.id
    })

  @source  = Source.create({
    name:    "Bill's Pearls",
    date:    Time.now,
    address: "3601 Congress Avenue, Austin, TX 78701",
    type_of: "store",
    user_id: @current_user.id
  })

  @item = Item.create({
    description: "vintage basketball signed by Julius Irving",
    quantity:    1,
    shipping:    "buyer",
    storage_loc: "closet 4",
    status:      "sold",
    condition:   "poor",
    subcat1_id:  @subcat1.id,
    subcat2_id:  @subcat2.id,
    source_id:   @source.id,
  })

  @finance = Finance.create({
    procure_cost:   0,
    shipping_cost:  0,
    pre_sale_notes: "Lorem ipsum",
    pre_sale_cost:  0,
    buyer_pmt:      0,
    item_id:        @item.id
    })
end
