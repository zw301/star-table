import merge from 'lodash/merge';

import {
  RECEIVE_REVIEW,
  RECEIVE_REVIEW_ERRORS,
  RECEIVE_REVIEWS
} from '../actions/review_actions';


const ReviewErrorsReducer = (state = [], action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_REVIEWS:
    case RECEIVE_REVIEW:
      return [];
    case RECEIVE_REVIEW_ERRORS:
      return action.errors;
    default:
      return state;
  }
};

export default ReviewErrorsReducer;
