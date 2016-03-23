require "test_helper"

feature "Source" do # passing only without selenium below
  scenario "displays newly created source" do
    login_user_for_test
    source = Source.create(
      name: "Jim's Treasures",
      address: "129 Angell Street, Providence. RI 02912",
      type_of: "store",
      user_id: current_user_for_test.id
      )
      
    visit sources_path

    page.must_have_content("Treasures")
    page.must_have_content(source.address)
  end
end
