export const createReview = review => (
  $.ajax({
    method: 'POST',
    url: '/api/reviews',
    data: {review}
  })
);


export const fetchReview = reviewId => (
  $.ajax({
    method: 'GET',
    url: `/api/reviews/${reviewId}`
  })
);


export const fetchUserReviews = (userId) => (
  $.ajax({
    method: 'GET',
    url: '/api/reviews',
    data: {userId}
  })
);


export const fetchRestaurantReviews = (userId, restaurantId) => (
  $.ajax({
    method: 'GET',
    url: '/api/reviews',
    data: {userId, restaurantId}
  })
);

//delete a review
// export const destroyReview = reviewId => (
//   $.ajax({
//     method: 'DELETE',
//     url: `/api/reviews/${reviewId}`
//   })
// );

//update a review
// export const updateReview = review => (
//   $.ajax({
//     method: 'PATCH',
//     url: `/api/reviews/${review.id}`,
//     data: {review}
//   })
// );
