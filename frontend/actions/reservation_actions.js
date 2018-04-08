
import * as APIUtil from '../util/reservation_api_util';

export const RECEIVE_ALL_RESERVATION = 'RECEIVE_ALL_RESERVATION';
export const RECEIVE_SINGLE_RESERVATION = 'RECEIVE_SINGLE_RESERVATION';
export const DESTROY_RESERVATION = 'DESTROY_RESERVATION';

export const RECEIVE_RESERVATION_ERRORS = 'RECEIVE_RESERVATION_ERRORS';


export const requestAllReservations = () => dispatch => (
  APIUtil.fetchAllReservation()
    .then(reservations => dispatch(receiveAllReservation(reservations)))
);

export const requestSingleReservation = (id) => dispatch => (
  APIUtil.fetchSingleReservation(id)
  .then(reservation => {
    dispatch(receiveSingleReservation(reservation));
    return reservation;
  })
);

export const createReservation = reservation => dispatch => (
  APIUtil.createReservation(reservation)
    .then((newReservation) => {
      dispatch(receiveSingleReservation(newReservation.id));
      dispatch(receiveReservationErrors([]));
    }, err => (dispatch(receiveReservationErrors(err.responseJSON))))
);

export const updateReservation = reservation => dispatch => (
  APIUtil.updateReservation(reservation).then(updatedReservation =>
    dispatch(receiveSingleReservation(updatedReservation)))
);


export const deleteReservation = id => dispatch => (
  APIUtil.deleteReservation(id)
    .then(reservation => dispatch(removeReservation(reservation.id)))
);

// export const resetReservation = () => dispatch => (
//   dispatch(clearReservation({}))
// );

const receiveAllReservation = (reservations) => ({
  type: RECEIVE_ALL_RESERVATION,
  reservations
});

const receiveSingleReservation = (reservation) => ({
  type: RECEIVE_SINGLE_RESERVATION,
  reservation,
});

const removeReservation = (reservationId) => ({
  type: DESTROY_RESERVATION,
  reservationId
});
// const clearReservation = (reservation) => ({
//   type: CLEAR_RESERVATION,
//   reservation,
// });

// export const receiveDelete = () => ({
//   type: RECEIVE_DELETE
// });

export const receiveReservationErrors = (errors) => ({
  type: RECEIVE_RESERVATION_ERRORS,
  errors
});
