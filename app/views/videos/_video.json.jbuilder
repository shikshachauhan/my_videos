json.extract! video, :id, :user_id, :private, :title, :video, :description, :created_at, :updated_at
json.url video_url(video, format: :json)
