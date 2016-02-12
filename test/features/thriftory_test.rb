require "test_helper"

#doesn't this need to be in a Class inheriting from Capybara?
test "login" do

    @user = User.new(:email => 'jayd@example.com')
    @user.password = 'password'
    @user.save!

    visit root_path
    click_link 'Login'

    fill_in "email", with: 'jayd@example.com'
    fill_in "password", with: 'password'
    click_button "Sign In"
  end


feature "Thriftory" do #passing
  scenario "login page appears" do
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
