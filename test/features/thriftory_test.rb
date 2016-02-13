require "test_helper"

# doesn't this need to be in a Class inheriting from Capybara?
test "login" do #fails: ArgumentError: wrong number of arguments (1 for 2)

    @user = User.new(:email => 'jayd@example.com')
    @user.password = 'password'
    @user.username = 'jaysond'
    @user.address = '339 Maple Street, New Bedford, MA 02740'
    @user.save!

    visit root_path

    fill_in "email", with: 'jayd@example.com'
    fill_in "password", with: 'password'
    click_button "Sign In"
  end

feature 'Create an Account' do
  scenario 'user enters valid input' do
    visit '/users/new'

    within '#user_registration' do #fails, cannot find field username
      fill_in 'username', with: 'jayson'
      fill_in 'password', with: 'password'
      fill_in 'address',  with: '337 Maple Street, New Bedford, MA 02740'
      fill_in 'email',    with: 'jd@example.com'
      click_button 'Create User' #or should this be link?
    end

    page.must_have_content 'Please sign in!'
    page.current_path.must_equal '/login'
  end
end


feature "Thriftory" do #passing
  scenario "redirect to login page if not signed in" do
    visit home_path #cannot access until logged in
    page.must_have_css(".logo")
    page.wont_have_content("thrill") #home page content
  end
end

#set up access to this page by logging in first
feature "Thriftory" do
  scenario "displays a list of sources" do
    visit sources_path
    page.must_have_css(".sources")
    within(".sources") do
      Source.find_each do |source|
        selector = ".source-#{ source.id }"
        page.must_have_css(selector)
        within(selector) do
          page.must_have_content(source.name)
          page.must_have_content(source.address)
        end
      end
    end
  end
end

describe "SourcesController" do
  describe "GET :index" do
    before do
      get :index
    end

    it "renders sources/index" do
      must_render_template "sources/index"
    end

    it "responds with success" do
      must_respond_with :success
    end
  end
end
