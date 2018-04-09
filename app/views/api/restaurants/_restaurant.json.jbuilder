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
# :reviews


# json.reviews restaurant.reviews
json.rating_arr restaurant.rating_arr

# json.logo asset_path(restaurant.logo)
