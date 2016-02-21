require "test_helper"

feature "view items" do
  scenario "current_user_for_test's inventory appears", js: true do
    login_user_for_test #not logging in
    create_inventory_for_test
    visit items_path
    page.must_have_content("book") #current_user_for_test's only item
  end
end
