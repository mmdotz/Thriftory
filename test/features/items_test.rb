require "test_helper"

feature 'Create a new item' do
  scenario 'user enters valid input', js: true do
    skip("pending") # selenium opens FireFox to add info
    visit '/items/new'
    # choose dropdown x3 Other/Music & Video/Instruments
    fill_in "Description" with: "Instrument vintage upright bass"
    # dropdown quantity - not nec since it defaults to 1?
    fill_in "Storage loc" with: "Cabinet 5"
    # dropdown source
    # keep shipping info empty
    fill_in "Status" with: "ready for sale"
    fill_in "Condition" with: "good"
    fill_in "Procure cost" with: 50
    fill_in "Pre sale cost" with: 5
    # shipping cost empty
    # buyer pmt empty
    click_button 'Create Item'
    end
    page.must_have_content 'bass'
    page.current_path.must_equal "/items/#{current_user_for_test.items.last.id}
  end
end

#failing on log in
feature "View items" do
  scenario "current_user_for_test's inventory appears", js: true do
    login_user_for_test
    create_inventory_for_test
    visit items_path
    page.must_have_content("book") #current_user_for_test's only item
  end
end
