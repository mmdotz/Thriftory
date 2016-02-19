require "test_helper"

feature "Source" do
  scenario "displays newly created source" do
    login_user_for_test
    source = Source.create(
      name: "Jim's Treasures",
      address: "129 Angell Street, Providence. RI 02912",
      type_of: "store",
      user_id: current_user_for_test.id
      )
    visit sources_path
    current_user_for_test.sources.find_each do |source|
      page.must_have_content("Treasures")
      page.must_have_content(source.address)
    end
  end
end

feature "Source" do
  scenario "displays newly created source" do
    login_user_for_test
    source = Source.create(
      name: "Jim's Treasures",
      address: "129 Angell Street, Providence. RI 02912",
      type_of: "store",
      user_id: current_user_for_test.id
      )
    visit sources_path
    current_user_for_test.sources.find_each do |source|
      page.must_have_content("Treasures")
      page.must_have_content(source.address)
    end
  end
end
