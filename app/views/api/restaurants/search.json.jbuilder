json.restaurants do
  json.array! @restaurants do |restaurant|
    json.extract! restaurant, :id, :name, :cuisine, :rating
  end
end

json.cuisines do
  json.array! @cuisines do |cuisine|
    # json.cuisine cuisine
    # json.is_cuisine false
  end
end
