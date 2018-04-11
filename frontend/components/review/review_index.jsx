import React from 'react';
import ReviewIndexItem from './review_index_item';

class ReviewIndex extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount(){
    this.props.requestRestaurantReviews(this.props.restaurantId);
  }


  render(){
    if(Object.keys(this.props.reviews).length === 0 ){ return null; }
    const reviews = Object.values(this.props.reviews).map((review, idx) => (
        <ReviewIndexItem key={review.id} review={review} />
    ));
    return (
      <ul className="review-ul">
        {reviews}
      </ul>
    );
  }
}

export default ReviewIndex;
