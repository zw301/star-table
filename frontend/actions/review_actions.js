import * as APIUtil from '../util/review_api_util';

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';

const receiveReviews = reviews => ({
  type: RECEIVE_REVIEWS,
  reviews
});

const receiveReview = review => ({
  type: RECEIVE_REVIEW,
  review
});

const removeReview = reviewId => ({
  type: REMOVE_REVIEW,
  reviewId
});

//error handling
export const receiveReviewErrors = errors => ({
  type: RECEIVE_REVIEW_ERRORS,
  errors
});


//create a review
export const createReview = review => dispatch => (
  APIUtil.createReview(review)
    .then((newReview) => {
      dispatch(receiveReview(newReview));
    }, err => {
      dispatch(receiveReviewErrors(err.responseJSON));
    })
);

//fetch a review for review show page
export const requestReview = reviewId => dispatch => (
  APIUtil.fetchReview(reviewId)
    .then(review => (dispatch(receiveReview(review))),
        err => dispatch(receiveReviewErrors(err.responseJSON)))
);

// fetch all of current restaurant's reviews
// export const requestRestaurantReviews = ({userId, restaurantId}) => dispatch => (
//   APIUtil.fetchRestaurantReviews(userId, restaurantId)
//     .then(reviews => (dispatch(receiveReviews(reviews))),
//         err => (dispatch(receiveReviewErrors(err.responseJSON))))
// );

export const requestRestaurantReviews = (restaurantId) => dispatch => (
  APIUtil.fetchRestaurantReviews(restaurantId)
    .then(reviews => (dispatch(receiveReviews(reviews))),
        err => (dispatch(receiveReviewErrors(err.responseJSON))))
);

// fetch all of current user's reviews
// export const requestUserReviews = userId => dispatch => (
//   APIUtil.fetchUserReviews(userId)
//     .then(reviews => (dispatch(receiveReviews(reviews))),
//       err => (dispatch(receiveReviewErrors(err.responseJSON))))
// );

// delete a review
export const deleteReview = reviewId => dispatch => (
  APIUtil.destroyReview(reviewId)
    .then(review => (dispatch(removeReview(reviewId))),
      err => dispatch(receiveReviewErrors(err.responseJSON)))
);
