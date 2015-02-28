json.array!(@zombiegroups) do |user|
  json.extract! zombiegroup, :id, :latitude, :longitude, :address, :description, :title
  json.url zombiegroup_url(zombiegroup, format: :json)
end
