require 'test_helper'

class PointcloudsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pointclouds_index_url
    assert_response :success
  end

  test "should get new" do
    get pointclouds_new_url
    assert_response :success
  end

end
