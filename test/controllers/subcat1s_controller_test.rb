require 'test_helper'

class Subcat1sControllerTest < ActionController::TestCase
  setup do
    @subcat1 = subcat1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcat1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcat1" do
    assert_difference('Subcat1.count') do
      post :create, subcat1: { category_id: @subcat1.category_id, name: @subcat1.name }
    end

    assert_redirected_to subcat1_path(assigns(:subcat1))
  end

  test "should show subcat1" do
    get :show, id: @subcat1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subcat1
    assert_response :success
  end

  test "should update subcat1" do
    patch :update, id: @subcat1, subcat1: { category_id: @subcat1.category_id, name: @subcat1.name }
    assert_redirected_to subcat1_path(assigns(:subcat1))
  end

  test "should destroy subcat1" do
    assert_difference('Subcat1.count', -1) do
      delete :destroy, id: @subcat1
    end

    assert_redirected_to subcat1s_path
  end
end
