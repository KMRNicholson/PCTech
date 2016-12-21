require 'test_helper'

class PointcloudsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get library_path
    assert_response :success
  end

  test "should get new" do
    get upload_path
    assert_response :success
  end

end
