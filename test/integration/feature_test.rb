require 'test_helper'

class FeatureTest < ActionDispatch::IntegrationTest

  setup do
    @review = reviews(:one)
    @restaurant = restaurants(:one)
  end

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

  test "you can add a new review" do
    post restaurants_url, params: { restaurant: { description: @restaurant.description, name: @restaurant.name } }
    follow_redirect!
    post "/restaurants/1/reviews", params: { review: { comment: 'Great', rating: 10, restaurant_id: @review.restaurant_id } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "div.reviewrating","Rating:\n  10"
    assert_select "div.reviewcomment","Comment:\n  Great"

  end

end
