require "test_helper"

class RegisterUserControllerTest < ActionDispatch::IntegrationTest
  test "should get registeruser" do
    get register_user_registeruser_url
    assert_response :success
  end
end
