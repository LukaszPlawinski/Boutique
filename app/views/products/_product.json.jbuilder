json.extract! product, :id, :title, :description, :price, :image_url, :category, :size, :created_at, :updated_at
json.url product_url(product, format: :json)
