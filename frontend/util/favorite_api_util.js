export const createFavorite = id => (
  $.ajax({
    method: 'POST',
    url: '/api/favorites',
    data: { id }
  })
);

export const fetchUserFavorites = userId => (
  $.ajax({
    method: 'GET',
    url: '/api/favorites',
    data: {userId}
  })
);

export const fetchSingleFavorite = (id) => (
  $.ajax({
    method: 'GET',
    url: `/api/favorites/${id}`
  })
);


export const deleteFavorite = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `/api/favorites/${id}`,
    data: { id }
  })
);
