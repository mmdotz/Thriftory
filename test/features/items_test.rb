require "test_helper"

feature "create_inventory_for_test_method_builds_an_item" do #testing a test??
  scenario "current_user_for_test's inventory is created" do
    login_user_for_test
    current_user_for_test
    create_inventory_for_test
    # binding.pry

    @item.wont_be_nil
  end
end

feature "view items" do
  scenario "current_user_for_test's inventory appears" do
    login_user_for_test
    current_user_for_test
    create_inventory_for_test
    # binding.pry

    visit '/items'
    # puts page.html

    @item.description.must_include("vintage") #current_user_for_test's only item
  end
end
