require 'test_helper'

class Api::RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_restaurants_index_url
    assert_response :success
  end

  test "should get show" do
    get api_restaurants_show_url
    assert_response :success
  end

  test "should get create" do
    get api_restaurants_create_url
    assert_response :success
  end

end
