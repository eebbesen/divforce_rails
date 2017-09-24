json.extract! req, :id, :title, :description, :created_at, :updated_at
json.url req_url(req, format: :json)
