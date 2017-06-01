require 'test_helper'

class GaugesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gauges_index_url
    assert_response :success
  end

  test "should get show" do
    get gauges_show_url
    assert_response :success
  end

  test "should get new" do
    get gauges_new_url
    assert_response :success
  end

  test "should get create" do
    get gauges_create_url
    assert_response :success
  end

  test "should get edit" do
    get gauges_edit_url
    assert_response :success
  end

  test "should get update" do
    get gauges_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gauges_destroy_url
    assert_response :success
  end

end
