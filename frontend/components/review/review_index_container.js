import {connect} from 'react-redux';
import {requestRestaurantReviews} from '../../actions/review_actions';
import ReviewIndex from './review_index';

const mapStateToProps = (state, ownProps) => {
  return {
    reviews: state.entities.reviews,
    restaurantId: ownProps.match.params.restaurantId,
    restaurant: state.entities.restaurants[ownProps.match.params.restaurantId],
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = dispatch => ({
  requestRestaurantReviews: (fetchInfo) => (
    dispatch(requestRestaurantReviews(fetchInfo))
  )
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReviewIndex);
