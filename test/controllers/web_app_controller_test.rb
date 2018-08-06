require 'test_helper'

class WebAppControllerTest < ActionDispatch::IntegrationTest
  test "should get Calender" do
    get web_app_Calender_url
    assert_response :success
  end

end
