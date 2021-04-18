require "test_helper"

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get addcategory" do
    get category_addcategory_url
    assert_response :success
  end
end
