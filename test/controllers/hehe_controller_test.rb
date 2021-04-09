require "test_helper"

class HeheControllerTest < ActionDispatch::IntegrationTest
  test "should get newuser" do
    get hehe_newuser_url
    assert_response :success
  end
end
