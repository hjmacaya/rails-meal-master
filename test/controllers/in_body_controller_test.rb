require "test_helper"

class InBodyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get in_body_index_url
    assert_response :success
  end

  test "should get show" do
    get in_body_show_url
    assert_response :success
  end

  test "should get new" do
    get in_body_new_url
    assert_response :success
  end

  test "should get create" do
    get in_body_create_url
    assert_response :success
  end
end
