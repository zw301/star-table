import { connect } from 'react-redux';

import RestaurantDetail from './restaurant_detail';
import { requestSingleRestaurant } from '../../actions/restaurant_actions';


const mapStateToProps = (state, ownProps) => ({
  restaurant: state.entities.restaurants[ownProps.match.params.restaurantId],
});

const mapDispatchToProps = dispatch => ({
  requestSingleRestaurant: id => dispatch(requestSingleRestaurant(id)),
});



export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RestaurantDetail);
