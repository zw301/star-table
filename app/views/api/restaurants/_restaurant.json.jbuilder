json.extract! restaurant,
:id,
:owner_id,
:name,
:address,
:star,
:city,
:state,
:zipcode,
:phone_number,
:open_time,
:close_time,
:cuisine,
:description,
:logo
# :favorites


# json.reviews restaurant.reviews
json.rating_arr restaurant.rating_arr
json.reservationUserIds restaurant.reservations.pluck(:user_id).uniq
json.countReview restaurant.reviews.pluck(:user_id).length
# json.favoriteUserIds restaurant.favorites.pluck(:user_id)
if current_user
  json.currentUserLikes !!restaurant.favorites.find_by(user_id: current_user.id)
end
# json.currentUserLikesId restaurant.favorites.find_by(user_id: current_user.id).id

# json.logo asset_path(restaurant.logo)
