json.extract! course, :id, :title, :price, :instructor, :created_at, :updated_at
json.url course_url(course, format: :json)
