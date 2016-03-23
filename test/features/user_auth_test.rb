require "test_helper"

feature "successful login" do
  scenario 'login with account' do
    # skip("pending")
    login_user_for_test
    current_user_for_test
    visit '/home'
    page.must_have_content("reseller")
  end
end

feature 'Create an Account' do
  scenario 'user enters valid input' do
    # skip("pending")
    visit '/users/new'

    within '#user_registration' do
      fill_in 'Username', with: 'jayson'
      fill_in 'Password', with: 'password'
      fill_in 'Address',  with: '337 Maple Street, New Bedford, MA 02740'
      fill_in 'Email',    with: 'jd@example.com'
      click_button 'Create User'
    end

    login_user_for_test #this creates the user again tho

    page.must_have_content 'reseller'
    page.current_path.must_equal '/home'
  end
end

feature "login redirect" do
  scenario "redirect to login page if not signed in" do
    # skip("pending")
    visit home_path #cannot access until logged in
    page.must_have_css(".logo")
    page.wont_have_content("thrill") #home page content
  end
end
