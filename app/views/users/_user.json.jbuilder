json.extract! user, :id, :name, :username, :password, :age, :height, :weight, :created_at, :updated_at
json.url user_url(user, format: :json)
