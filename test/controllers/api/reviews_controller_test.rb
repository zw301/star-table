require 'test_helper'

class Api::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_reviews_index_url
    assert_response :success
  end

end
