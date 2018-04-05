export const fetchAllQualifiedRestaurants = (filteredData) => {
  return $.ajax({
    method: 'GET',
    url: `/api/restaurants/`,
    data: { filteredData }
  });
};

export const fetchSingleRestaurant = (restaurantId) => {
  return $.ajax({
    method: 'GET',
    url: `/api/restaurants/${restaurantId}`
  });
};

export const createRestaurant = (restaurant) => {
  return $.ajax({
    method: 'POST',
    url: `/api/users/${restaurant.owner_id}/restaurants/`,
    data: {restaurant}
  });
};
