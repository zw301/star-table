import merge from 'lodash/merge';

import {
  RECEIVE_REVIEW,
  RECEIVE_REVIEWS,
  REMOVE_REVIEW
} from '../actions/review_actions';


const reviewReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_REVIEWS:
      return action.reviews;
    case RECEIVE_REVIEW:
      const review = action.review;
      return merge({}, state, {[review.id]: review});
    case REMOVE_REVIEW:
      let newState = merge({}, state);
      delete newState[action.reviewId];
      return newState;
    default:
      return state;
  }
};

export default reviewReducer;
