require "test_helper"

feature "Thriftory" do
  scenario "home page appears" do
    visit home_path
    page.must_have_css(".logo")
    page.wont_have_content "Goobye All!"
  end
end

describe "SourcesController" do #failing
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
