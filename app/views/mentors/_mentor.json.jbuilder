json.extract! mentor, :id, :image, :email, :name, :age, :mentor_type, :description, :question, :interests, :location, :longitude, :latitude, :created_at, :updated_at
json.url mentor_url(mentor, format: :json)
