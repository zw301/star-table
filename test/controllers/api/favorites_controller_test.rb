require 'test_helper'

class Api::FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_favorites_show_url
    assert_response :success
  end

end
