require 'test_helper'

class WebAppControllerTest < ActionController::TestCase
  test "should get 495Calendar" do
    get :495Calendar
    assert_response :success
  end

end
