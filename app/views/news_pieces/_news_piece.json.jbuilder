json.extract! news_piece, :id, :title, :description, :text, :image, :date, :pinned, :created_at, :updated_at
json.url news_piece_url(news_piece, format: :json)
