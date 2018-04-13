
import * as APIUtil from '../util/favorite_api_util';

export const RECEIVE_ALL_FAVORITE = 'RECEIVE_ALL_FAVORITE';
export const RECEIVE_SINGLE_FAVORITE = 'RECEIVE_SINGLE_FAVORITE';
export const DESTROY_FAVORITE = 'DESTROY_FAVORITE';

export const RECEIVE_FAVORITE_ERRORS = 'RECEIVE_FAVORITE_ERRORS';

export const createFavorite = favorite => dispatch => (
  APIUtil.createFavorite(favorite)
    .then((newFavorite) => {
      dispatch(receiveSingleFavorite(newFavorite));
    }, err => (dispatch(receiveFavoriteErrors(err.responseJSON))))
);


export const requestSingleFavorite = (id) => dispatch => (
  APIUtil.fetchSingleFavorite(id)
  .then(favorite => {
    dispatch(receiveSingleFavorite(favorite));
    return favorite;
  })
);

// fetch all current user's favorites
export const requestUserFavorites = userId => dispatch => (
  APIUtil.fetchUserFavorites(userId)
    .then(favorites => dispatch(receiveAllFavorite(favorites)),
          err => dispatch(receiveFavoriteErrors(err.responseJSON)))
);




export const deleteFavorite = id => dispatch => (
  APIUtil.deleteFavorite(id)
    .then(favorite => dispatch(removeFavorite(favorite)),
      err => dispatch(receiveFavoriteErrors(err.responseJSON))
    )
);


const receiveAllFavorite = (favorites) => ({
  type: RECEIVE_ALL_FAVORITE,
  favorites
});

const receiveSingleFavorite = (favorite) => ({
  type: RECEIVE_SINGLE_FAVORITE,
  favorite,
});

const removeFavorite = (favoriteId) => ({
  type: DESTROY_FAVORITE,
  favoriteId
});


export const receiveFavoriteErrors = (errors) => ({
  type: RECEIVE_FAVORITE_ERRORS,
  errors
});
