json.array!(@profiles) do |profile|
  json.extract! profile, :id, :email
  json.url profile_url(profile, format: :json)
end
