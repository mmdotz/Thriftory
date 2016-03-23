require "test_helper"

# tests are failing because of hard coded @category ids in Stats Controller
feature "Stats" do
  scenario "displays modal dropin on load" do
    # skip("pending")

    login_user_for_test
    current_user_for_test
    create_inventory_for_test
    visit stats_index_path
    binding.pry
    puts page.html

    within('.modal-dialog') do # Cap can't find class
      page.must_have_content(Time.now) # is it the "page" that should have this?
    end
  end
end

feature "Stats" do
  scenario "displays only current_user_for_test's stats" do
    # skip("pending")

    login_user_for_test
    current_user_for_test
    create_inventory_for_test
    visit stats_index_path

    page.must_have_content("Revenue") # need something specific to @current_user, dollar figure?
  end
end
