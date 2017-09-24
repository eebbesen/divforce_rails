json.extract! review, :id, :reviewer, :reviewee, :text, :created_at, :updated_at
json.url review_url(review, format: :json)
