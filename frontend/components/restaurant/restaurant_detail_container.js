import { connect } from 'react-redux';

import RestaurantDetail from './restaurant_detail';
import { requestSingleRestaurant } from '../../actions/restaurant_actions';

import {
  createFavorite,
  deleteFavorite
} from '../../actions/favorite_actions';


const mapStateToProps = (state, ownProps) => ({
  restaurant: state.entities.restaurants[ownProps.match.params.restaurantId],
  currentUser: state.session.currentUser,
});

const mapDispatchToProps = dispatch => ({
  requestSingleRestaurant: id => dispatch(requestSingleRestaurant(id)),
  createFavorite: favorite => dispatch(createFavorite(favorite)),
  deleteFavorite: favoriteId => dispatch(deleteFavorite(favoriteId))
});



export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RestaurantDetail);
