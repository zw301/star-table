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


export const fetchRestaurantReviews = (restaurantId) => (
  $.ajax({
    method: 'GET',
    url: '/api/reviews',
    data: {restaurantId}
  })
);

//delete a review
export const deleteReview = reviewId => (
  $.ajax({
    method: 'DELETE',
    url: `/api/reviews/${reviewId}`
  })
);

//update a review
// export const updateReview = review => (
//   $.ajax({
//     method: 'PATCH',
//     url: `/api/reviews/${review.id}`,
//     data: {review}
//   })
// );
