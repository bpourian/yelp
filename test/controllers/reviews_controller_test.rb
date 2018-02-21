require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
    @restaurant = restaurants(:one)

  end
  #
  # test "should get index" do
  #   get reviews_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_review_url
  #   assert_response :success
  # end

  test "should create review" do
    assert_difference('Review.count') do
      post restaurants_url, params: { restaurant: { description: @restaurant.description, name: @restaurant.name } }
      post "/restaurants/1/reviews", params: { review: { comment: @review.comment, rating: @review.rating, restaurant_id: @review.restaurant_id } }

    end

    assert_redirected_to restaurants_url
  end
#
#   test "should show review" do
#     get review_url(@review)
#     assert_response :success
#   end
#
#   test "should get edit" do
#     get edit_review_url(@review)
#     assert_response :success
#   end
#
#   test "should update review" do
#     patch review_url(@review), params: { review: { comment: @review.comment, rating: @review.rating, restaurant_id: @review.restaurant_id } }
#     assert_redirected_to review_url(@review)
#   end
#
#   test "should destroy review" do
#     assert_difference('Review.count', -1) do
#       delete review_url(@review)
#     end
#
#     assert_redirected_to reviews_url
   # end
 end
