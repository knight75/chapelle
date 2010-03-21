require 'test_helper'

class KitaitoisControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kitaitois)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kitaitoi" do
    assert_difference('Kitaitoi.count') do
      post :create, :kitaitoi => { }
    end

    assert_redirected_to kitaitoi_path(assigns(:kitaitoi))
  end

  test "should show kitaitoi" do
    get :show, :id => kitaitois(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => kitaitois(:one).id
    assert_response :success
  end

  test "should update kitaitoi" do
    put :update, :id => kitaitois(:one).id, :kitaitoi => { }
    assert_redirected_to kitaitoi_path(assigns(:kitaitoi))
  end

  test "should destroy kitaitoi" do
    assert_difference('Kitaitoi.count', -1) do
      delete :destroy, :id => kitaitois(:one).id
    end

    assert_redirected_to kitaitois_path
  end
end
