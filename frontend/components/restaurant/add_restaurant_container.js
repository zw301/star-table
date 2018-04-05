import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';

import AddRestaurant from './add_restaurant';
import {
  receiveSingleRestaurant,
  createRestaurant,
  receiveRestaurantErrors
} from '../../actions/restaurant_actions';


const mapStateToProps = ({errors}) => ({
  errors: errors.restaurant
});

const mapDispatchToProps = dispatch => ({
    // receiveSingleRestaurant: (id) => dispatch(receiveSingleRestaurant(id)),
    createRestaurant: restaurant => dispatch(createRestaurant(restaurant)),
    clearErrors: () => dispatch(receiveRestaurantErrors([])),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AddRestaurant);
