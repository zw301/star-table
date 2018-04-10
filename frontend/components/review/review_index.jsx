import React from 'react';
import ReviewIndexItem from './review_index_item';

class ReviewIndex extends React.Component {
  constructor(props){
    super(props);
    // this.indexEl = this.indexEl.bind(this);
    // this.reviewChecker = this.reviewChecker.bind(this);

  }

  componentDidMount(){
    let fetchInfo = {
      userId: this.props.currentUser.id,
      restaurantId: this.props.restaurantId
    };
    this.props.requestRestaurantReviews(fetchInfo);
  }


  render(){
    if(Object.keys(this.props.reviews).length === 0 ){ return null; }
    const reviews = Object.values(this.props.reviews).map((review, idx) => (
        <ReviewIndexItem key={review.id} review={review} />
    ));
    return (
      <ul>
        {reviews}
      </ul>
    );
  }
}

export default ReviewIndex;
