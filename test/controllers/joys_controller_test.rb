require 'test_helper'

class JoysControllerTest < ActionController::TestCase
  setup do
    @joy = joys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:joys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joy" do
    assert_difference('Joy.count') do
      post :create, joy: { code: @joy.code, number: @joy.number }
    end

    assert_redirected_to joy_path(assigns(:joy))
  end

  test "should show joy" do
    get :show, id: @joy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joy
    assert_response :success
  end

  test "should update joy" do
    patch :update, id: @joy, joy: { code: @joy.code, number: @joy.number }
    assert_redirected_to joy_path(assigns(:joy))
  end

  test "should destroy joy" do
    assert_difference('Joy.count', -1) do
      delete :destroy, id: @joy
    end

    assert_redirected_to joys_path
  end
end
