require "test_helper"

class InBodiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get in_bodies_index_url
    assert_response :success
  end

  test "should get show" do
    get in_bodies_show_url
    assert_response :success
  end

  test "should get new" do
    get in_bodies_new_url
    assert_response :success
  end

  test "should get create" do
    get in_bodies_create_url
    assert_response :success
  end
end
