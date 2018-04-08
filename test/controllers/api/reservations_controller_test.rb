require 'test_helper'

class Api::ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_reservations_index_url
    assert_response :success
  end

end
