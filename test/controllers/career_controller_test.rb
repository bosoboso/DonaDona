require 'test_helper'

class CareerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get career_new_url
    assert_response :success
  end

  test "should get index" do
    get career_index_url
    assert_response :success
  end

  test "should get update" do
    get career_update_url
    assert_response :success
  end

  test "should get delete" do
    get career_delete_url
    assert_response :success
  end

end
