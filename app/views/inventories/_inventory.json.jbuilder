json.extract! inventory, :id, :name, :description, :user_id, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
