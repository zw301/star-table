@restaurants.each do |restaurant|
  json.set! restaurant.id do
    json.partial! '/api/restaurants/restaurant', restaurant: restaurant
  end
end
