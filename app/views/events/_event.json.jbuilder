json.extract! event, :id, :name, :organizer, :date, :description, :image_url, :address, :latitude, :longitude, :created_at, :updated_at
json.url event_url(event, format: :json)
