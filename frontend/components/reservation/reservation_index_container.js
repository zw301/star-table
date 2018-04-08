import {connect} from 'react-redux';

import ReservationIndex from './reservation_index';



const mapStateToProps = (state, ownProps) => {
    return{
    currentUser: state.session.currentUser,
    reservations: state.entities.reservations
  };
};

// const mapDispatchToProps = dispatch => ({
// });

export default connect(
  mapStateToProps,
  null
)(ReservationIndex);
