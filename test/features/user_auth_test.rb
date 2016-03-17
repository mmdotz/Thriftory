require "test_helper"

feature "login with success" do
  scenario 'login with account' do
    login_user_for_test
  end
end

feature 'Create an Account' do
  scenario 'user enters valid input', js: true do
    skip("pending") #selenium opens FireFox to add info
    visit '/users/new'

    within '#user_registration' do
      fill_in 'Username', with: 'jayson'
      fill_in 'Password', with: 'password'
      fill_in 'Address',  with: '337 Maple Street, New Bedford, MA 02740'
      fill_in 'Email',    with: 'jd@example.com'
      click_button 'Create User'
    end

    page.must_have_content 'Please sign'
    page.current_path.must_equal '/login'
  end
end

feature "login redirect" do
  scenario "redirect to login page if not signed in" do
    skip("pending")
    visit home_path #cannot access until logged in
    page.must_have_css(".logo")
    page.wont_have_content("thrill") #home page content
  end
end
