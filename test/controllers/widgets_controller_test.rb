require 'test_helper'

class WidgetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get widgets_index_url
    assert_response :success
  end

  test "should get show" do
    get widgets_show_url
    assert_response :success
  end

  test "should get new" do
    get widgets_new_url
    assert_response :success
  end

  test "should get edit" do
    get widgets_edit_url
    assert_response :success
  end

  test "should get create" do
    get widgets_create_url
    assert_response :success
  end

  test "should get update" do
    get widgets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get widgets_destroy_url
    assert_response :success
  end

end
