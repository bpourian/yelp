require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
    @restaurant = restaurants(:one)
  end

  test "should get new" do
    get "/restaurants/1/"
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post restaurants_url, params: { restaurant: { description: @restaurant.description, name: @restaurant.name } }
      post "/restaurants/1/reviews", params: { review: { comment: @review.comment, rating: @review.rating, restaurant_id: @review.restaurant_id } }
    end
  end

  test "should show review" do
    get "/restaurants/1/"
    assert_response :success
  end

 end
