require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_create_url
    assert_response :success
  end

  test "should get distroy" do
    get admin_distroy_url
    assert_response :success
  end
end
