require 'test_helper'

class Subcat2sControllerTest < ActionController::TestCase
  setup do
    @subcat2 = subcat2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcat2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcat2" do
    assert_difference('Subcat2.count') do
      post :create, subcat2: { name: @subcat2.name, subcat1_id: @subcat2.subcat1_id }
    end

    assert_redirected_to subcat2_path(assigns(:subcat2))
  end

  test "should show subcat2" do
    get :show, id: @subcat2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subcat2
    assert_response :success
  end

  test "should update subcat2" do
    patch :update, id: @subcat2, subcat2: { name: @subcat2.name, subcat1_id: @subcat2.subcat1_id }
    assert_redirected_to subcat2_path(assigns(:subcat2))
  end

  test "should destroy subcat2" do
    assert_difference('Subcat2.count', -1) do
      delete :destroy, id: @subcat2
    end

    assert_redirected_to subcat2s_path
  end
end
