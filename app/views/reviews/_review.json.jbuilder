json.extract! review, :id, :rating, :comment, :restaurant_id, :created_at, :updated_at
json.url review_url(review, format: :json)
