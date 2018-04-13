@favorites.each do |favorite|
  json.set! favorite.id do
    json.partial! '/api/favorites/favorite', favorite: favorite
  end
end


# 
# json.favorites do
#   @favorites.each do |favorite|
#     json.set! favorite.id do
#       json.partial! '/api/favorites/favorite', favorite: favorite
#     end
#   end
# end
#
# json.restaurants do
#   @favorited_restaurants.each do |fav_res|
#     json.set! fav_res.id do
#         json.partial! '/api/restaurants/restaurant', restaurant: fav_res
#     end
#   end
# end
