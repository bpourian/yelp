require 'test_helper'

class ReviewAverageTest < ActionDispatch::IntegrationTest
  test "you can add a new restaurant" do
    get "/restaurants/new"
    assert_response :success

    post "/restaurants",
    params: { restaurant: { name: "Ben's", description: "Great restaurant"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "div","Name:\n  Ben's"
  end
end
