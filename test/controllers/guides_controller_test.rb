require 'test_helper'

class GuidesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guides_index_url
    assert_response :success
  end

  test "should get create" do
    get guides_create_url
    assert_response :success
  end

  test "should get destroy" do
    get guides_destroy_url
    assert_response :success
  end

end
