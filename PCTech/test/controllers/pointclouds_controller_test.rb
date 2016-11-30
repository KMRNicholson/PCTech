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

  test "should get create" do
    get pointclouds_create_url
    assert_response :success
  end

  test "should get destroy" do
    get pointclouds_destroy_url
    assert_response :success
  end

end
