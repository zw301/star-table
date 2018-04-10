import React from 'react';

class ReviewIndexItem extends React.Component {
  constructor(props){
    super(props);
  }
  render(){
    const review = this.props.review;
    // if(!review.user) {return null; }
    return (
      <li>
        <p>Rating: {review.rating}</p>
        <p>User: {review.user.first_name}</p>
        <p>Comment: {review.comment}</p>
        <br />
      </li>
    );
  }
}

export default ReviewIndexItem;
