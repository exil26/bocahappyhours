require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get happy" do
    get :happy
    assert_response :success
  end

  test "should get hour" do
    get :hour
    assert_response :success
  end

end
