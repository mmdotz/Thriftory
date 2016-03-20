require "test_helper"

feature "create_inventory_for_test_method_builds_an_item" do #testing a test??
  scenario "current_user_for_test's inventory is created" do
    @item.wont_be_nil
  end
end

feature "view items" do # failing on log in
  scenario "current_user_for_test's inventory appears", js: true do
    login_user_for_test # in test_helper
    sleep 2
    create_inventory_for_test
    visit items_path
    page.must_have_content("vintage") #current_user_for_test's only item
  end
end
