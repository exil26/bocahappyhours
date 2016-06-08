require 'test_helper'

class RestauransControllerTest < ActionController::TestCase
  setup do
    @restauran = restaurans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restauran" do
    assert_difference('Restauran.count') do
      post :create, restauran: { address: @restauran.address, name: @restauran.name, phone: @restauran.phone, website: @restauran.website }
    end

    assert_redirected_to restauran_path(assigns(:restauran))
  end

  test "should show restauran" do
    get :show, id: @restauran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restauran
    assert_response :success
  end

  test "should update restauran" do
    patch :update, id: @restauran, restauran: { address: @restauran.address, name: @restauran.name, phone: @restauran.phone, website: @restauran.website }
    assert_redirected_to restauran_path(assigns(:restauran))
  end

  test "should destroy restauran" do
    assert_difference('Restauran.count', -1) do
      delete :destroy, id: @restauran
    end

    assert_redirected_to restaurans_path
  end
end
