json.extract! user, :id, :nama_lengkap, :peran_id, :created_at, :updated_at
json.url user_url(user, format: :json)
